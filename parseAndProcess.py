import networkx as nx
import argparse
import json
import csv
import re
from math import ceil
from math import log2

class OneNodeWire:

    def __init__(self, name, bitwidth):
        self.name = name
        self.bitwidth = bitwidth

class Wire:

    def __init__(self, input, output, component_data):
        self.name = determine_wire_name(input, output)
        self.input_component_bitwidth = component_data[input].bitwidth
        self.output_component_bitwidth = component_data[output].bitwidth
        self.bitwidth = 0
        if self.input_component_bitwidth < self.output_component_bitwidth:
            self.bitwidth = self.input_component_bitwidth
        else:
            self.bitwidth = self.output_component_bitwidth
        if (component_data[input].is_mul == 1):
            self.bitwidth = self.bitwidth * 2

class Component:

    def __init__(self, name):
        self.name = name
        self.instructions = 0
        self.bitwidth = 0
        self.rf_depth = 0
        self.input_ports_count = 0
        self.output_ports_count = 0
        self.total_exe_cycles = 0
        self.opcode = 0
        self.is_mul = 0
        self.inputnodes = []
        self.outputnodes = []
        self.inputwires = []
        self.outputwires = []
        self.typename = ""

    def print_component(self):
        print("GENERAL")
        print("name: " + self.name)
        print("typename: " + str(self.typename))
        print("PARAMETERS")
        print("instructions: " + str(self.instructions))
        print("bitwidth: " + str(self.bitwidth))
        print("rf_depth: " + str(self.rf_depth))
        print("input_ports_count: " + str(self.input_ports_count))
        print("output_ports_count: " + str(self.output_ports_count))
        print("total_exe_cycles: " + str(self.total_exe_cycles))
        print("opcode: " + str(self.opcode))
        print("is_mul: " + str(self.is_mul))
        print("INPUT WIRES")
        print(self.inputwires)
        print("OUTPUT WIRES")
        print(self.outputwires)

    def parse_name_for_type(self, name):
        """
        Parse the name of the component in order to determine what type it is
        meant to be.
        """
        if re.search("mul.*", name):
            # print(name + " recognized as mul")
            self.opcode = 1
            self.is_mul = 1
            self.typename = "multiplier"
            return self.typename
        if re.search("add.*", name):
            # print(name + " recognized as add")
            self.typename = "adder"
            return self.typename
        if re.search("load.*", name):
            # print(name + " recognized as load")
            self.typename = "load"
            self.inputports = 1
            self.inputwires.append(self.name + "_input")
            return self.typename
        if re.search("store.*", name):
            # print(name + " recognized as store")
            self.typename = "store"
            self.outputports = 1
            self.outputwires.append(self.name + "_output")
            return self.typename

    def set_bitwidth(self, json):
        """
        Sets the correct bitwidth value based on the json configuration data
        """
        if self.typename == "multiplier":
            self.bitwidth = json["resource_database"]["bitwidth_multiplier"]
        elif self.typename == "adder":
            self.bitwidth = json["resource_database"]["bitwidth_adder"]
        elif self.typename == "load" or self.typename == "store":
            self.bitwidth = json["resource_database"]["bitwidth_register_file"]


    def find_csv(self, filename):
        """
        Find the csv associated with this component and use it to set
        self.instructions
        """
        csv_path = filename[:-4] + "_" + self.name + "_rf_allocation.csv"
        try:
            with open(csv_path) as csvfile:
                reader = csv.reader(csvfile, delimiter=",")
                self.instructions = len(list(reader)) - 1
        except:
            pass

    def set_total_exe_cycles(self, total_exe_cycles):
        self.total_exe_cycles = total_exe_cycles

    def set_rf_depth(self, rf_depth):
        self.rf_depth = rf_depth

    def add_input_node(self, node):
        if (node not in self.inputnodes):
            self.inputnodes.append(node)

    def add_output_node(self, node):
        if (node not in self.outputnodes):
            self.outputnodes.append(node)

    def nodes_to_wires(self):
        """
        Orders the inputs and outputs alphabetically, matching the port mapping.
        Then generates wire names based on the inputs and outputs, with the wire
        names being in the same order as their respective ports.
        """
        self.inputnodes.sort()
        self.outputnodes.sort()

        for node in self.inputnodes:
            self.input_ports_count += 1
            self.inputwires.append(determine_wire_name(node, self.name))
        for node in self.outputnodes:
            self.output_ports_count += 1
            self.outputwires.append(determine_wire_name(self.name, node))
        self.input_ports_count = len(self.inputwires)
        self.output_ports_count = len(self.outputwires)

def determine_wire_name(inputname, outputname):
    return inputname + "_to_" + outputname


# Get the argument from the command line, and based on it load input data
parser = argparse.ArgumentParser()
parser.add_argument('filename', type=str)
args = parser.parse_args()
schematic_filename = args.filename[:-4] + "_schematic.dot"
graph_representation = nx.drawing.nx_agraph.read_dot(schematic_filename)
non_schematic_graph = nx.drawing.nx_agraph.read_dot(args.filename)

# Load the JSON configuration data file
configuration_file_path = "./testgraphs/configurationFiles/conf_matrix_vec_kernel_clock_400_size_5x5_L2_RD_SETUP_LAT_2_L2_WR_SETUP_LAT_2_L2_IO_16_L2_DEPTH_262144_L2_CLOCK_350_TECHNOLOGY_28_L2_TYPE_tt0p9v85c_powdown.json"
configuration_data = {}
with open(configuration_file_path) as file:
    configuration_data = json.load(file)

# Find the last instructions to be executed, in order to determine
# total_exe_cycles. Done here so it only needs to be done once.
highestCycle = 0
for node in non_schematic_graph.nodes(data = True):
    cycle_number = int(re.search("(\d+)$", node[1]['label']).group(0))
    if cycle_number > highestCycle:
        highestCycle = cycle_number

# Loop through all nodes in the schematic graph, and convert them to Component
# objects.
component_dict = {}
wires_dict = {}
for node in graph_representation.nodes:
    component_dict[node] = Component(node)
    typename = component_dict[node].parse_name_for_type(node)
    component_dict[node].find_csv(args.filename)
    component_dict[node].set_bitwidth(configuration_data)
    component_dict[node].set_total_exe_cycles(highestCycle)

    if typename == "load":
        wires_dict[node+"_input"] = OneNodeWire(node+"_input", component_dict[node].bitwidth)
    elif typename == "store":
        wires_dict[node+"_output"] = OneNodeWire(node+"_output", component_dict[node].bitwidth)

# Loop through info csv to fill out register file depth
fu_information_csv = ""
fu_information_csv_filename = args.filename[:-4] + "_FU_infos.csv"
with open(fu_information_csv_filename) as csvfile:
    reader = csv.reader(csvfile, delimiter=",")
    next(reader)
    for row in reader:
        component_dict[row[0]].set_rf_depth(row[10])

# Generate the wire data and set port data for the components
itercount = 0
wires_list = []
for edge in graph_representation.edges:
    itercount += 1
    new_wire = Wire(edge[0], edge[1], component_dict)
    wires_list.append(new_wire)
    wires_dict[determine_wire_name(edge[0], edge[1])] = new_wire
    component_dict[edge[0]].add_output_node(edge[1])
    component_dict[edge[1]].add_input_node(edge[0])

for node in graph_representation.nodes:
    component_dict[node].nodes_to_wires()

# Enable for testing, shows all
# for node in graph_representation.nodes:
#     component_dict[node].print_component()

# STAGE 2: CODE GENERATION

def generate_port_lines(component):
    """
    Generate the VHDL lines describing the input and output ports for
    instantiating the components.
    """
    lines = ""
    inputwire_template = "            i_FU({1} downto {0}) => {2}({3} downto 0),\n"
    outputwire_template = "            o_FU({1} downto {0}) => {2}({3} downto 0),\n"

    for i in range(len(component.inputwires)):
        if (component.is_mul == 0):
            generated_line = inputwire_template.format(
                i * component.bitwidth,
                (i+1) * component.bitwidth - 1,
                component.inputwires[i],
                wires_dict[component.inputwires[i]].bitwidth - 1
            )
            lines += generated_line
        else:
            mulbitwidth = component.bitwidth // 2
            generated_line = inputwire_template.format(
                i * mulbitwidth,
                (i+1) * mulbitwidth - 1,
                component.inputwires[i],
                mulbitwidth - 1
            )
            lines += generated_line


    for i in range(len(component.outputwires)):
        generated_line = outputwire_template.format(
            i * component.bitwidth,
            (i+1) * component.bitwidth - 1,
            component.outputwires[i],
            wires_dict[component.outputwires[i]].bitwidth - 1
        )
        lines += generated_line

    return lines

outputfile = open("testgraph146.vhd", 'a')

header = """library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use IEEE.math_real."ceil";
use IEEE.math_real."log2";"""

entity_lines = """entity Generated_hardware is
end Generated_hardware;"""

architecture_begin_line = "architecture behave of Generated_hardware is\n"

clock_constant_lines = """    constant c_CLOCK_PERIOD : time := 50 ns;
    signal r_CLOCK: std_logic :='0';\n"""

outputfile.write(header)
outputfile.write("\n\n")
outputfile.write(entity_lines)
outputfile.write("\n\n")
outputfile.write(architecture_begin_line)
outputfile.write(clock_constant_lines)

#DONE: generate signals
for wire in wires_list:
    wireline = "    signal {0} : std_logic_vector({1} downto 0);\n".format(wire.name, wire.bitwidth - 1)
    outputfile.write(wireline)

for node in graph_representation.nodes:
    component = component_dict[node]
    if component.typename == "load":
        wireline = "    signal {0} : std_logic_vector({1} downto 0);\n".format(node+"_input", component.bitwidth - 1)
        outputfile.write(wireline)
    elif component.typename == "store":
        wireline = "    signal {0} : std_logic_vector({1} downto 0);\n".format(node+"_output", component.bitwidth - 1)
        outputfile.write(wireline)


instruction_signal_template = """    signal r_r_COMPUTING_{0} : std_logic := '0';
    signal r_r_LOAD_INST_{0} : std_logic := '0';
    signal r_r_LOAD_NEXT_INST_{0} : std_logic := '0';
    signal r_r_INPUT_INST_{0} : std_logic_vector({1} downto 0);
    signal r_r_RESET_{0} : std_logic :='0';\n"""

for node in graph_representation.nodes:
    component = component_dict[node]
    rf_depth = int(component.rf_depth) + 1
    instruction_length = ceil(log2(component.total_exe_cycles+1)) + ceil(log2(component.input_ports_count)) * 3 + 2 + ceil(log2(int(rf_depth))) * 4 + 4 - 1
    outputfile.write(instruction_signal_template.format(node, instruction_length))

outputfile.write("\n")

#DONE: describe component
component_text = """
    component FU is
        generic (
                    INSTRUCTIONS : natural;
                    TOTAL_EXE_CYCLES : natural;
                    BITWIDTH : natural; -- 31 -> meaning 32
                    RF_DEPTH: natural; --15 -> meaning 16
                    INPUT_PORTS : natural;
                    OUTPUT_PORTS : natural;
                    OPCODE :natural;
                    IS_MUL: natural
                );
        port(
            i_clock : in std_logic;
            --specify inputs (number of FUs that sends input to this FU)
           -- i_FU : in std_logic_vector(((BITWIDTH +1)*INPUT_PORTS)-1 downto 0);

            i_FU : in std_logic_vector(((BITWIDTH +1)*INPUT_PORTS)-
            IS_MUL*((BITWIDTH +1)/2*INPUT_PORTS)   -1
            downto 0);
            o_FU : out std_logic_vector(((BITWIDTH +1)*OUTPUT_PORTS)-1 downto 0);
            -- SIGNALS FOR INSTRUCTION MEMORY
            r_COMPUTING : in std_logic;
            r_LOAD_INST: in std_logic := '0';
            r_LOAD_NEXT_INST: in std_logic ;
            r_INPUT_INST : in std_logic_vector(
                natural(ceil(log2(real(TOTAL_EXE_CYCLES+1))))+ -- bit required to ID Clock
                natural(ceil(log2(real(INPUT_PORTS))))*3 + -- crossbar Select Bits
                2 + -- Register Write enable bits (input 1 and input 2)
                natural(ceil(log2(real(RF_DEPTH)))) * 4 + -- RF select bits
                4 -- Select signals for MuxA and MuxB
                -1
                downto 0);
            r_RESET : in std_logic

            );
    end component FU;
begin
"""

outputfile.write(component_text)

#DONE: Initialize components
component_initialization_template = """
    {0}: FU
        generic map (
            INSTRUCTIONS => {1},
            BITWIDTH => {2},
            RF_DEPTH => {3},
            INPUT_PORTS => {4},
            OUTPUT_PORTS => {5},
            TOTAL_EXE_CYCLES => {6},
            OPCODE => {7},
            IS_MUL => {8}
        )
        port map(
            i_clock => r_CLOCK,
{9}
            r_COMPUTING => r_r_COMPUTING_{0},
            r_LOAD_INST => r_r_LOAD_INST_{0},
            r_LOAD_NEXT_INST => r_r_LOAD_NEXT_INST_{0},
            r_INPUT_INST => r_r_INPUT_INST_{0},
            r_RESET => r_r_RESET_{0}

                );
"""

for node in graph_representation.nodes:
    component = component_dict[node]
    component_text = component_initialization_template.format(
        component.name,
        component.instructions,
        component.bitwidth - 1,
        int(component.rf_depth) - 1,
        component.input_ports_count,
        component.output_ports_count,
        component.total_exe_cycles,
        component.opcode,
        component.is_mul,
        generate_port_lines(component)
    )
    outputfile.write(component_text)

#TODO: process
clock_process = """
    p_CLK_GEN: process is
    begin
        wait for c_CLOCK_PERIOD/2;
        r_CLOCK <= not r_CLOCK;
    end process p_CLK_GEN;\n\n"""

outputfile.write(clock_process)

#DONE: end behave
outputfile.write("end behave;")
