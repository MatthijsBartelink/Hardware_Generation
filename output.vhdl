library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use IEEE.math_real."ceil";
use IEEE.math_real."log2";

entity Generated_hardware is
end Generated_hardware;

architecture behave of Generated_hardware is
    constant c_CLOCK_PERIOD : time := 50 ns;
    signal r_CLOCK: std_logic :='0';
    signal add_0_to_add_1 : std_logic_vector(63 downto 0);
    signal add_0_to_add_3 : std_logic_vector(63 downto 0);
    signal add_0_to_add_4 : std_logic_vector(63 downto 0);
    signal add_0_to_store_0 : std_logic_vector(63 downto 0);
    signal add_1_to_add_0 : std_logic_vector(63 downto 0);
    signal add_1_to_add_1 : std_logic_vector(63 downto 0);
    signal add_1_to_add_2 : std_logic_vector(63 downto 0);
    signal add_1_to_store_4 : std_logic_vector(63 downto 0);
    signal add_2_to_add_0 : std_logic_vector(63 downto 0);
    signal add_2_to_add_4 : std_logic_vector(63 downto 0);
    signal add_2_to_store_2 : std_logic_vector(63 downto 0);
    signal add_3_to_add_3 : std_logic_vector(63 downto 0);
    signal add_3_to_store_1 : std_logic_vector(63 downto 0);
    signal add_4_to_add_0 : std_logic_vector(63 downto 0);
    signal add_4_to_add_4 : std_logic_vector(63 downto 0);
    signal add_4_to_store_3 : std_logic_vector(63 downto 0);
    signal add_5_to_add_2 : std_logic_vector(63 downto 0);
    signal mul_0_to_add_0 : std_logic_vector(31 downto 0);
    signal mul_0_to_add_1 : std_logic_vector(31 downto 0);
    signal mul_0_to_add_2 : std_logic_vector(31 downto 0);
    signal mul_0_to_add_3 : std_logic_vector(31 downto 0);
    signal mul_0_to_add_4 : std_logic_vector(31 downto 0);
    signal mul_1_to_add_0 : std_logic_vector(31 downto 0);
    signal mul_1_to_add_1 : std_logic_vector(31 downto 0);
    signal mul_2_to_add_5 : std_logic_vector(31 downto 0);
    signal mul_3_to_add_1 : std_logic_vector(31 downto 0);
    signal mul_3_to_add_3 : std_logic_vector(31 downto 0);
    signal mul_3_to_add_4 : std_logic_vector(31 downto 0);
    signal mul_4_to_add_2 : std_logic_vector(31 downto 0);
    signal mul_4_to_add_4 : std_logic_vector(31 downto 0);
    signal mul_5_to_add_2 : std_logic_vector(31 downto 0);
    signal mul_6_to_add_3 : std_logic_vector(31 downto 0);
    signal mul_7_to_add_1 : std_logic_vector(31 downto 0);
    signal mul_8_to_add_5 : std_logic_vector(31 downto 0);
    signal load_0_to_mul_0 : std_logic_vector(31 downto 0);
    signal load_0_to_mul_1 : std_logic_vector(31 downto 0);
    signal load_0_to_mul_2 : std_logic_vector(31 downto 0);
    signal load_0_to_mul_3 : std_logic_vector(31 downto 0);
    signal load_0_to_mul_4 : std_logic_vector(31 downto 0);
    signal load_0_to_mul_5 : std_logic_vector(31 downto 0);
    signal load_0_to_mul_6 : std_logic_vector(31 downto 0);
    signal load_0_to_mul_7 : std_logic_vector(31 downto 0);
    signal load_0_to_mul_8 : std_logic_vector(31 downto 0);
    signal load_1_to_mul_5 : std_logic_vector(31 downto 0);
    signal load_2_to_mul_6 : std_logic_vector(31 downto 0);
    signal load_3_to_mul_8 : std_logic_vector(31 downto 0);
    signal load_4_to_mul_7 : std_logic_vector(31 downto 0);
    signal load_5_to_mul_4 : std_logic_vector(31 downto 0);
    signal load_0_input : std_logic_vector(63 downto 0);
    signal load_1_input : std_logic_vector(63 downto 0);
    signal load_2_input : std_logic_vector(63 downto 0);
    signal load_3_input : std_logic_vector(63 downto 0);
    signal load_4_input : std_logic_vector(63 downto 0);
    signal load_5_input : std_logic_vector(63 downto 0);
    signal store_0_output : std_logic_vector(63 downto 0);
    signal store_1_output : std_logic_vector(63 downto 0);
    signal store_2_output : std_logic_vector(63 downto 0);
    signal store_3_output : std_logic_vector(63 downto 0);
    signal store_4_output : std_logic_vector(63 downto 0);
    signal r_r_COMPUTING_add_0 : std_logic := '0';
    signal r_r_LOAD_INST_add_0 : std_logic := '0';
    signal r_r_LOAD_NEXT_INST_add_0 : std_logic := '0';
    signal r_r_INPUT_INST_add_0 : std_logic_vector(34 downto 0);
    signal r_r_RESET_add_0 : std_logic :='0';
    signal r_r_COMPUTING_add_1 : std_logic := '0';
    signal r_r_LOAD_INST_add_1 : std_logic := '0';
    signal r_r_LOAD_NEXT_INST_add_1 : std_logic := '0';
    signal r_r_INPUT_INST_add_1 : std_logic_vector(30 downto 0);
    signal r_r_RESET_add_1 : std_logic :='0';
    signal r_r_COMPUTING_add_2 : std_logic := '0';
    signal r_r_LOAD_INST_add_2 : std_logic := '0';
    signal r_r_LOAD_NEXT_INST_add_2 : std_logic := '0';
    signal r_r_INPUT_INST_add_2 : std_logic_vector(30 downto 0);
    signal r_r_RESET_add_2 : std_logic :='0';
    signal r_r_COMPUTING_add_3 : std_logic := '0';
    signal r_r_LOAD_INST_add_3 : std_logic := '0';
    signal r_r_LOAD_NEXT_INST_add_3 : std_logic := '0';
    signal r_r_INPUT_INST_add_3 : std_logic_vector(26 downto 0);
    signal r_r_RESET_add_3 : std_logic :='0';
    signal r_r_COMPUTING_add_4 : std_logic := '0';
    signal r_r_LOAD_INST_add_4 : std_logic := '0';
    signal r_r_LOAD_NEXT_INST_add_4 : std_logic := '0';
    signal r_r_INPUT_INST_add_4 : std_logic_vector(30 downto 0);
    signal r_r_RESET_add_4 : std_logic :='0';
    signal r_r_COMPUTING_add_5 : std_logic := '0';
    signal r_r_LOAD_INST_add_5 : std_logic := '0';
    signal r_r_LOAD_NEXT_INST_add_5 : std_logic := '0';
    signal r_r_INPUT_INST_add_5 : std_logic_vector(20 downto 0);
    signal r_r_RESET_add_5 : std_logic :='0';
    signal r_r_COMPUTING_mul_0 : std_logic := '0';
    signal r_r_LOAD_INST_mul_0 : std_logic := '0';
    signal r_r_LOAD_NEXT_INST_mul_0 : std_logic := '0';
    signal r_r_INPUT_INST_mul_0 : std_logic_vector(29 downto 0);
    signal r_r_RESET_mul_0 : std_logic :='0';
    signal r_r_COMPUTING_mul_1 : std_logic := '0';
    signal r_r_LOAD_INST_mul_1 : std_logic := '0';
    signal r_r_LOAD_NEXT_INST_mul_1 : std_logic := '0';
    signal r_r_INPUT_INST_mul_1 : std_logic_vector(25 downto 0);
    signal r_r_RESET_mul_1 : std_logic :='0';
    signal r_r_COMPUTING_mul_2 : std_logic := '0';
    signal r_r_LOAD_INST_mul_2 : std_logic := '0';
    signal r_r_LOAD_NEXT_INST_mul_2 : std_logic := '0';
    signal r_r_INPUT_INST_mul_2 : std_logic_vector(17 downto 0);
    signal r_r_RESET_mul_2 : std_logic :='0';
    signal r_r_COMPUTING_mul_3 : std_logic := '0';
    signal r_r_LOAD_INST_mul_3 : std_logic := '0';
    signal r_r_LOAD_NEXT_INST_mul_3 : std_logic := '0';
    signal r_r_INPUT_INST_mul_3 : std_logic_vector(21 downto 0);
    signal r_r_RESET_mul_3 : std_logic :='0';
    signal r_r_COMPUTING_mul_4 : std_logic := '0';
    signal r_r_LOAD_INST_mul_4 : std_logic := '0';
    signal r_r_LOAD_NEXT_INST_mul_4 : std_logic := '0';
    signal r_r_INPUT_INST_mul_4 : std_logic_vector(24 downto 0);
    signal r_r_RESET_mul_4 : std_logic :='0';
    signal r_r_COMPUTING_mul_5 : std_logic := '0';
    signal r_r_LOAD_INST_mul_5 : std_logic := '0';
    signal r_r_LOAD_NEXT_INST_mul_5 : std_logic := '0';
    signal r_r_INPUT_INST_mul_5 : std_logic_vector(20 downto 0);
    signal r_r_RESET_mul_5 : std_logic :='0';
    signal r_r_COMPUTING_mul_6 : std_logic := '0';
    signal r_r_LOAD_INST_mul_6 : std_logic := '0';
    signal r_r_LOAD_NEXT_INST_mul_6 : std_logic := '0';
    signal r_r_INPUT_INST_mul_6 : std_logic_vector(20 downto 0);
    signal r_r_RESET_mul_6 : std_logic :='0';
    signal r_r_COMPUTING_mul_7 : std_logic := '0';
    signal r_r_LOAD_INST_mul_7 : std_logic := '0';
    signal r_r_LOAD_NEXT_INST_mul_7 : std_logic := '0';
    signal r_r_INPUT_INST_mul_7 : std_logic_vector(20 downto 0);
    signal r_r_RESET_mul_7 : std_logic :='0';
    signal r_r_COMPUTING_mul_8 : std_logic := '0';
    signal r_r_LOAD_INST_mul_8 : std_logic := '0';
    signal r_r_LOAD_NEXT_INST_mul_8 : std_logic := '0';
    signal r_r_INPUT_INST_mul_8 : std_logic_vector(20 downto 0);
    signal r_r_RESET_mul_8 : std_logic :='0';
    signal r_r_COMPUTING_load_0 : std_logic := '0';
    signal r_r_LOAD_INST_load_0 : std_logic := '0';
    signal r_r_LOAD_NEXT_INST_load_0 : std_logic := '0';
    signal r_r_INPUT_INST_load_0 : std_logic_vector(17 downto 0);
    signal r_r_RESET_load_0 : std_logic :='0';
    signal r_r_COMPUTING_load_1 : std_logic := '0';
    signal r_r_LOAD_INST_load_1 : std_logic := '0';
    signal r_r_LOAD_NEXT_INST_load_1 : std_logic := '0';
    signal r_r_INPUT_INST_load_1 : std_logic_vector(13 downto 0);
    signal r_r_RESET_load_1 : std_logic :='0';
    signal r_r_COMPUTING_load_2 : std_logic := '0';
    signal r_r_LOAD_INST_load_2 : std_logic := '0';
    signal r_r_LOAD_NEXT_INST_load_2 : std_logic := '0';
    signal r_r_INPUT_INST_load_2 : std_logic_vector(13 downto 0);
    signal r_r_RESET_load_2 : std_logic :='0';
    signal r_r_COMPUTING_load_3 : std_logic := '0';
    signal r_r_LOAD_INST_load_3 : std_logic := '0';
    signal r_r_LOAD_NEXT_INST_load_3 : std_logic := '0';
    signal r_r_INPUT_INST_load_3 : std_logic_vector(13 downto 0);
    signal r_r_RESET_load_3 : std_logic :='0';
    signal r_r_COMPUTING_load_4 : std_logic := '0';
    signal r_r_LOAD_INST_load_4 : std_logic := '0';
    signal r_r_LOAD_NEXT_INST_load_4 : std_logic := '0';
    signal r_r_INPUT_INST_load_4 : std_logic_vector(13 downto 0);
    signal r_r_RESET_load_4 : std_logic :='0';
    signal r_r_COMPUTING_load_5 : std_logic := '0';
    signal r_r_LOAD_INST_load_5 : std_logic := '0';
    signal r_r_LOAD_NEXT_INST_load_5 : std_logic := '0';
    signal r_r_INPUT_INST_load_5 : std_logic_vector(13 downto 0);
    signal r_r_RESET_load_5 : std_logic :='0';
    signal r_r_COMPUTING_store_0 : std_logic := '0';
    signal r_r_LOAD_INST_store_0 : std_logic := '0';
    signal r_r_LOAD_NEXT_INST_store_0 : std_logic := '0';
    signal r_r_INPUT_INST_store_0 : std_logic_vector(17 downto 0);
    signal r_r_RESET_store_0 : std_logic :='0';
    signal r_r_COMPUTING_store_1 : std_logic := '0';
    signal r_r_LOAD_INST_store_1 : std_logic := '0';
    signal r_r_LOAD_NEXT_INST_store_1 : std_logic := '0';
    signal r_r_INPUT_INST_store_1 : std_logic_vector(17 downto 0);
    signal r_r_RESET_store_1 : std_logic :='0';
    signal r_r_COMPUTING_store_2 : std_logic := '0';
    signal r_r_LOAD_INST_store_2 : std_logic := '0';
    signal r_r_LOAD_NEXT_INST_store_2 : std_logic := '0';
    signal r_r_INPUT_INST_store_2 : std_logic_vector(17 downto 0);
    signal r_r_RESET_store_2 : std_logic :='0';
    signal r_r_COMPUTING_store_3 : std_logic := '0';
    signal r_r_LOAD_INST_store_3 : std_logic := '0';
    signal r_r_LOAD_NEXT_INST_store_3 : std_logic := '0';
    signal r_r_INPUT_INST_store_3 : std_logic_vector(17 downto 0);
    signal r_r_RESET_store_3 : std_logic :='0';
    signal r_r_COMPUTING_store_4 : std_logic := '0';
    signal r_r_LOAD_INST_store_4 : std_logic := '0';
    signal r_r_LOAD_NEXT_INST_store_4 : std_logic := '0';
    signal r_r_INPUT_INST_store_4 : std_logic_vector(17 downto 0);
    signal r_r_RESET_store_4 : std_logic :='0';


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

    add_0: FU
        generic map (
            INSTRUCTIONS => 6,
            BITWIDTH => 63,
            RF_DEPTH => 5,
            INPUT_PORTS => 4,
            OUTPUT_PORTS => 3,
            TOTAL_EXE_CYCLES => 146,
            OPCODE => 0,
            IS_MUL => 0
        )
        port map(
            i_clock => r_CLOCK,
            i_FU(0 downto 63) => add_1_to_add_0(0 downto 63),
            i_FU(64 downto 127) => add_2_to_add_0(0 downto 63),
            i_FU(128 downto 191) => add_4_to_add_0(0 downto 63),
            i_FU(192 downto 255) => mul_0_to_add_0(0 downto 31),
            i_FU(256 downto 319) => mul_1_to_add_0(0 downto 31),
            o_FU(0 downto 63) => add_0_to_add_1(0 downto 63),
            o_FU(64 downto 127) => add_0_to_add_3(0 downto 63),
            o_FU(128 downto 191) => add_0_to_add_4(0 downto 63),
            o_FU(192 downto 255) => add_0_to_store_0(0 downto 63),

            r_COMPUTING => r_r_COMPUTING_add_0,
            r_LOAD_INST => r_r_LOAD_INST_add_0,
            r_LOAD_NEXT_INST => r_r_LOAD_NEXT_INST_add_0,
            r_INPUT_INST => r_r_INPUT_INST_add_0,
            r_RESET => r_r_RESET_add_0

                );

    add_1: FU
        generic map (
            INSTRUCTIONS => 5,
            BITWIDTH => 63,
            RF_DEPTH => 2,
            INPUT_PORTS => 5,
            OUTPUT_PORTS => 3,
            TOTAL_EXE_CYCLES => 146,
            OPCODE => 0,
            IS_MUL => 0
        )
        port map(
            i_clock => r_CLOCK,
            i_FU(0 downto 63) => add_0_to_add_1(0 downto 63),
            i_FU(64 downto 127) => add_1_to_add_1(0 downto 63),
            i_FU(128 downto 191) => mul_0_to_add_1(0 downto 31),
            i_FU(192 downto 255) => mul_1_to_add_1(0 downto 31),
            i_FU(256 downto 319) => mul_3_to_add_1(0 downto 31),
            i_FU(320 downto 383) => mul_7_to_add_1(0 downto 31),
            o_FU(0 downto 63) => add_1_to_add_0(0 downto 63),
            o_FU(64 downto 127) => add_1_to_add_1(0 downto 63),
            o_FU(128 downto 191) => add_1_to_add_2(0 downto 63),
            o_FU(192 downto 255) => add_1_to_store_4(0 downto 63),

            r_COMPUTING => r_r_COMPUTING_add_1,
            r_LOAD_INST => r_r_LOAD_INST_add_1,
            r_LOAD_NEXT_INST => r_r_LOAD_NEXT_INST_add_1,
            r_INPUT_INST => r_r_INPUT_INST_add_1,
            r_RESET => r_r_RESET_add_1

                );

    add_2: FU
        generic map (
            INSTRUCTIONS => 3,
            BITWIDTH => 63,
            RF_DEPTH => 2,
            INPUT_PORTS => 4,
            OUTPUT_PORTS => 2,
            TOTAL_EXE_CYCLES => 146,
            OPCODE => 0,
            IS_MUL => 0
        )
        port map(
            i_clock => r_CLOCK,
            i_FU(0 downto 63) => add_1_to_add_2(0 downto 63),
            i_FU(64 downto 127) => add_5_to_add_2(0 downto 63),
            i_FU(128 downto 191) => mul_0_to_add_2(0 downto 31),
            i_FU(192 downto 255) => mul_4_to_add_2(0 downto 31),
            i_FU(256 downto 319) => mul_5_to_add_2(0 downto 31),
            o_FU(0 downto 63) => add_2_to_add_0(0 downto 63),
            o_FU(64 downto 127) => add_2_to_add_4(0 downto 63),
            o_FU(128 downto 191) => add_2_to_store_2(0 downto 63),

            r_COMPUTING => r_r_COMPUTING_add_2,
            r_LOAD_INST => r_r_LOAD_INST_add_2,
            r_LOAD_NEXT_INST => r_r_LOAD_NEXT_INST_add_2,
            r_INPUT_INST => r_r_INPUT_INST_add_2,
            r_RESET => r_r_RESET_add_2

                );

    add_3: FU
        generic map (
            INSTRUCTIONS => 1,
            BITWIDTH => 63,
            RF_DEPTH => 0,
            INPUT_PORTS => 4,
            OUTPUT_PORTS => 1,
            TOTAL_EXE_CYCLES => 146,
            OPCODE => 0,
            IS_MUL => 0
        )
        port map(
            i_clock => r_CLOCK,
            i_FU(0 downto 63) => add_0_to_add_3(0 downto 63),
            i_FU(64 downto 127) => add_3_to_add_3(0 downto 63),
            i_FU(128 downto 191) => mul_0_to_add_3(0 downto 31),
            i_FU(192 downto 255) => mul_3_to_add_3(0 downto 31),
            i_FU(256 downto 319) => mul_6_to_add_3(0 downto 31),
            o_FU(0 downto 63) => add_3_to_add_3(0 downto 63),
            o_FU(64 downto 127) => add_3_to_store_1(0 downto 63),

            r_COMPUTING => r_r_COMPUTING_add_3,
            r_LOAD_INST => r_r_LOAD_INST_add_3,
            r_LOAD_NEXT_INST => r_r_LOAD_NEXT_INST_add_3,
            r_INPUT_INST => r_r_INPUT_INST_add_3,
            r_RESET => r_r_RESET_add_3

                );

    add_4: FU
        generic map (
            INSTRUCTIONS => 3,
            BITWIDTH => 63,
            RF_DEPTH => 2,
            INPUT_PORTS => 5,
            OUTPUT_PORTS => 2,
            TOTAL_EXE_CYCLES => 146,
            OPCODE => 0,
            IS_MUL => 0
        )
        port map(
            i_clock => r_CLOCK,
            i_FU(0 downto 63) => add_0_to_add_4(0 downto 63),
            i_FU(64 downto 127) => add_2_to_add_4(0 downto 63),
            i_FU(128 downto 191) => add_4_to_add_4(0 downto 63),
            i_FU(192 downto 255) => mul_0_to_add_4(0 downto 31),
            i_FU(256 downto 319) => mul_3_to_add_4(0 downto 31),
            i_FU(320 downto 383) => mul_4_to_add_4(0 downto 31),
            o_FU(0 downto 63) => add_4_to_add_0(0 downto 63),
            o_FU(64 downto 127) => add_4_to_add_4(0 downto 63),
            o_FU(128 downto 191) => add_4_to_store_3(0 downto 63),

            r_COMPUTING => r_r_COMPUTING_add_4,
            r_LOAD_INST => r_r_LOAD_INST_add_4,
            r_LOAD_NEXT_INST => r_r_LOAD_NEXT_INST_add_4,
            r_INPUT_INST => r_r_INPUT_INST_add_4,
            r_RESET => r_r_RESET_add_4

                );

    add_5: FU
        generic map (
            INSTRUCTIONS => 1,
            BITWIDTH => 63,
            RF_DEPTH => 0,
            INPUT_PORTS => 1,
            OUTPUT_PORTS => 0,
            TOTAL_EXE_CYCLES => 146,
            OPCODE => 0,
            IS_MUL => 0
        )
        port map(
            i_clock => r_CLOCK,
            i_FU(0 downto 63) => mul_2_to_add_5(0 downto 31),
            i_FU(64 downto 127) => mul_8_to_add_5(0 downto 31),
            o_FU(0 downto 63) => add_5_to_add_2(0 downto 63),

            r_COMPUTING => r_r_COMPUTING_add_5,
            r_LOAD_INST => r_r_LOAD_INST_add_5,
            r_LOAD_NEXT_INST => r_r_LOAD_NEXT_INST_add_5,
            r_INPUT_INST => r_r_INPUT_INST_add_5,
            r_RESET => r_r_RESET_add_5

                );

    mul_0: FU
        generic map (
            INSTRUCTIONS => 19,
            BITWIDTH => 31,
            RF_DEPTH => 11,
            INPUT_PORTS => 0,
            OUTPUT_PORTS => 4,
            TOTAL_EXE_CYCLES => 146,
            OPCODE => 1,
            IS_MUL => 1
        )
        port map(
            i_clock => r_CLOCK,
            i_FU(0 downto 31) => load_0_to_mul_0(0 downto 31),
            o_FU(0 downto 31) => mul_0_to_add_0(0 downto 31),
            o_FU(32 downto 63) => mul_0_to_add_1(0 downto 31),
            o_FU(64 downto 95) => mul_0_to_add_2(0 downto 31),
            o_FU(96 downto 127) => mul_0_to_add_3(0 downto 31),
            o_FU(128 downto 159) => mul_0_to_add_4(0 downto 31),

            r_COMPUTING => r_r_COMPUTING_mul_0,
            r_LOAD_INST => r_r_LOAD_INST_mul_0,
            r_LOAD_NEXT_INST => r_r_LOAD_NEXT_INST_mul_0,
            r_INPUT_INST => r_r_INPUT_INST_mul_0,
            r_RESET => r_r_RESET_mul_0

                );

    mul_1: FU
        generic map (
            INSTRUCTIONS => 8,
            BITWIDTH => 31,
            RF_DEPTH => 5,
            INPUT_PORTS => 0,
            OUTPUT_PORTS => 1,
            TOTAL_EXE_CYCLES => 146,
            OPCODE => 1,
            IS_MUL => 1
        )
        port map(
            i_clock => r_CLOCK,
            i_FU(0 downto 31) => load_0_to_mul_1(0 downto 31),
            o_FU(0 downto 31) => mul_1_to_add_0(0 downto 31),
            o_FU(32 downto 63) => mul_1_to_add_1(0 downto 31),

            r_COMPUTING => r_r_COMPUTING_mul_1,
            r_LOAD_INST => r_r_LOAD_INST_mul_1,
            r_LOAD_NEXT_INST => r_r_LOAD_NEXT_INST_mul_1,
            r_INPUT_INST => r_r_INPUT_INST_mul_1,
            r_RESET => r_r_RESET_mul_1

                );

    mul_2: FU
        generic map (
            INSTRUCTIONS => 1,
            BITWIDTH => 31,
            RF_DEPTH => 0,
            INPUT_PORTS => 0,
            OUTPUT_PORTS => 0,
            TOTAL_EXE_CYCLES => 146,
            OPCODE => 1,
            IS_MUL => 1
        )
        port map(
            i_clock => r_CLOCK,
            i_FU(0 downto 31) => load_0_to_mul_2(0 downto 31),
            o_FU(0 downto 31) => mul_2_to_add_5(0 downto 31),

            r_COMPUTING => r_r_COMPUTING_mul_2,
            r_LOAD_INST => r_r_LOAD_INST_mul_2,
            r_LOAD_NEXT_INST => r_r_LOAD_NEXT_INST_mul_2,
            r_INPUT_INST => r_r_INPUT_INST_mul_2,
            r_RESET => r_r_RESET_mul_2

                );

    mul_3: FU
        generic map (
            INSTRUCTIONS => 3,
            BITWIDTH => 31,
            RF_DEPTH => 2,
            INPUT_PORTS => 0,
            OUTPUT_PORTS => 2,
            TOTAL_EXE_CYCLES => 146,
            OPCODE => 1,
            IS_MUL => 1
        )
        port map(
            i_clock => r_CLOCK,
            i_FU(0 downto 31) => load_0_to_mul_3(0 downto 31),
            o_FU(0 downto 31) => mul_3_to_add_1(0 downto 31),
            o_FU(32 downto 63) => mul_3_to_add_3(0 downto 31),
            o_FU(64 downto 95) => mul_3_to_add_4(0 downto 31),

            r_COMPUTING => r_r_COMPUTING_mul_3,
            r_LOAD_INST => r_r_LOAD_INST_mul_3,
            r_LOAD_NEXT_INST => r_r_LOAD_NEXT_INST_mul_3,
            r_INPUT_INST => r_r_INPUT_INST_mul_3,
            r_RESET => r_r_RESET_mul_3

                );

    mul_4: FU
        generic map (
            INSTRUCTIONS => 2,
            BITWIDTH => 31,
            RF_DEPTH => 1,
            INPUT_PORTS => 1,
            OUTPUT_PORTS => 1,
            TOTAL_EXE_CYCLES => 146,
            OPCODE => 1,
            IS_MUL => 1
        )
        port map(
            i_clock => r_CLOCK,
            i_FU(0 downto 31) => load_0_to_mul_4(0 downto 31),
            i_FU(32 downto 63) => load_5_to_mul_4(0 downto 31),
            o_FU(0 downto 31) => mul_4_to_add_2(0 downto 31),
            o_FU(32 downto 63) => mul_4_to_add_4(0 downto 31),

            r_COMPUTING => r_r_COMPUTING_mul_4,
            r_LOAD_INST => r_r_LOAD_INST_mul_4,
            r_LOAD_NEXT_INST => r_r_LOAD_NEXT_INST_mul_4,
            r_INPUT_INST => r_r_INPUT_INST_mul_4,
            r_RESET => r_r_RESET_mul_4

                );

    mul_5: FU
        generic map (
            INSTRUCTIONS => 1,
            BITWIDTH => 31,
            RF_DEPTH => 0,
            INPUT_PORTS => 1,
            OUTPUT_PORTS => 0,
            TOTAL_EXE_CYCLES => 146,
            OPCODE => 1,
            IS_MUL => 1
        )
        port map(
            i_clock => r_CLOCK,
            i_FU(0 downto 31) => load_0_to_mul_5(0 downto 31),
            i_FU(32 downto 63) => load_1_to_mul_5(0 downto 31),
            o_FU(0 downto 31) => mul_5_to_add_2(0 downto 31),

            r_COMPUTING => r_r_COMPUTING_mul_5,
            r_LOAD_INST => r_r_LOAD_INST_mul_5,
            r_LOAD_NEXT_INST => r_r_LOAD_NEXT_INST_mul_5,
            r_INPUT_INST => r_r_INPUT_INST_mul_5,
            r_RESET => r_r_RESET_mul_5

                );

    mul_6: FU
        generic map (
            INSTRUCTIONS => 1,
            BITWIDTH => 31,
            RF_DEPTH => 0,
            INPUT_PORTS => 1,
            OUTPUT_PORTS => 0,
            TOTAL_EXE_CYCLES => 146,
            OPCODE => 1,
            IS_MUL => 1
        )
        port map(
            i_clock => r_CLOCK,
            i_FU(0 downto 31) => load_0_to_mul_6(0 downto 31),
            i_FU(32 downto 63) => load_2_to_mul_6(0 downto 31),
            o_FU(0 downto 31) => mul_6_to_add_3(0 downto 31),

            r_COMPUTING => r_r_COMPUTING_mul_6,
            r_LOAD_INST => r_r_LOAD_INST_mul_6,
            r_LOAD_NEXT_INST => r_r_LOAD_NEXT_INST_mul_6,
            r_INPUT_INST => r_r_INPUT_INST_mul_6,
            r_RESET => r_r_RESET_mul_6

                );

    mul_7: FU
        generic map (
            INSTRUCTIONS => 1,
            BITWIDTH => 31,
            RF_DEPTH => 0,
            INPUT_PORTS => 1,
            OUTPUT_PORTS => 0,
            TOTAL_EXE_CYCLES => 146,
            OPCODE => 1,
            IS_MUL => 1
        )
        port map(
            i_clock => r_CLOCK,
            i_FU(0 downto 31) => load_0_to_mul_7(0 downto 31),
            i_FU(32 downto 63) => load_4_to_mul_7(0 downto 31),
            o_FU(0 downto 31) => mul_7_to_add_1(0 downto 31),

            r_COMPUTING => r_r_COMPUTING_mul_7,
            r_LOAD_INST => r_r_LOAD_INST_mul_7,
            r_LOAD_NEXT_INST => r_r_LOAD_NEXT_INST_mul_7,
            r_INPUT_INST => r_r_INPUT_INST_mul_7,
            r_RESET => r_r_RESET_mul_7

                );

    mul_8: FU
        generic map (
            INSTRUCTIONS => 1,
            BITWIDTH => 31,
            RF_DEPTH => 0,
            INPUT_PORTS => 1,
            OUTPUT_PORTS => 0,
            TOTAL_EXE_CYCLES => 146,
            OPCODE => 1,
            IS_MUL => 1
        )
        port map(
            i_clock => r_CLOCK,
            i_FU(0 downto 31) => load_0_to_mul_8(0 downto 31),
            i_FU(32 downto 63) => load_3_to_mul_8(0 downto 31),
            o_FU(0 downto 31) => mul_8_to_add_5(0 downto 31),

            r_COMPUTING => r_r_COMPUTING_mul_8,
            r_LOAD_INST => r_r_LOAD_INST_mul_8,
            r_LOAD_NEXT_INST => r_r_LOAD_NEXT_INST_mul_8,
            r_INPUT_INST => r_r_INPUT_INST_mul_8,
            r_RESET => r_r_RESET_mul_8

                );

    load_0: FU
        generic map (
            INSTRUCTIONS => 48,
            BITWIDTH => 63,
            RF_DEPTH => 0,
            INPUT_PORTS => 0,
            OUTPUT_PORTS => 8,
            TOTAL_EXE_CYCLES => 146,
            OPCODE => 0,
            IS_MUL => 0
        )
        port map(
            i_clock => r_CLOCK,
            i_FU(0 downto 63) => load_0_input(0 downto 63),
            o_FU(0 downto 63) => load_0_to_mul_0(0 downto 31),
            o_FU(64 downto 127) => load_0_to_mul_1(0 downto 31),
            o_FU(128 downto 191) => load_0_to_mul_2(0 downto 31),
            o_FU(192 downto 255) => load_0_to_mul_3(0 downto 31),
            o_FU(256 downto 319) => load_0_to_mul_4(0 downto 31),
            o_FU(320 downto 383) => load_0_to_mul_5(0 downto 31),
            o_FU(384 downto 447) => load_0_to_mul_6(0 downto 31),
            o_FU(448 downto 511) => load_0_to_mul_7(0 downto 31),
            o_FU(512 downto 575) => load_0_to_mul_8(0 downto 31),

            r_COMPUTING => r_r_COMPUTING_load_0,
            r_LOAD_INST => r_r_LOAD_INST_load_0,
            r_LOAD_NEXT_INST => r_r_LOAD_NEXT_INST_load_0,
            r_INPUT_INST => r_r_INPUT_INST_load_0,
            r_RESET => r_r_RESET_load_0

                );

    load_1: FU
        generic map (
            INSTRUCTIONS => 0,
            BITWIDTH => 63,
            RF_DEPTH => -1,
            INPUT_PORTS => 0,
            OUTPUT_PORTS => 0,
            TOTAL_EXE_CYCLES => 146,
            OPCODE => 0,
            IS_MUL => 0
        )
        port map(
            i_clock => r_CLOCK,
            i_FU(0 downto 63) => load_1_input(0 downto 63),
            o_FU(0 downto 63) => load_1_to_mul_5(0 downto 31),

            r_COMPUTING => r_r_COMPUTING_load_1,
            r_LOAD_INST => r_r_LOAD_INST_load_1,
            r_LOAD_NEXT_INST => r_r_LOAD_NEXT_INST_load_1,
            r_INPUT_INST => r_r_INPUT_INST_load_1,
            r_RESET => r_r_RESET_load_1

                );

    load_2: FU
        generic map (
            INSTRUCTIONS => 0,
            BITWIDTH => 63,
            RF_DEPTH => -1,
            INPUT_PORTS => 0,
            OUTPUT_PORTS => 0,
            TOTAL_EXE_CYCLES => 146,
            OPCODE => 0,
            IS_MUL => 0
        )
        port map(
            i_clock => r_CLOCK,
            i_FU(0 downto 63) => load_2_input(0 downto 63),
            o_FU(0 downto 63) => load_2_to_mul_6(0 downto 31),

            r_COMPUTING => r_r_COMPUTING_load_2,
            r_LOAD_INST => r_r_LOAD_INST_load_2,
            r_LOAD_NEXT_INST => r_r_LOAD_NEXT_INST_load_2,
            r_INPUT_INST => r_r_INPUT_INST_load_2,
            r_RESET => r_r_RESET_load_2

                );

    load_3: FU
        generic map (
            INSTRUCTIONS => 0,
            BITWIDTH => 63,
            RF_DEPTH => -1,
            INPUT_PORTS => 0,
            OUTPUT_PORTS => 0,
            TOTAL_EXE_CYCLES => 146,
            OPCODE => 0,
            IS_MUL => 0
        )
        port map(
            i_clock => r_CLOCK,
            i_FU(0 downto 63) => load_3_input(0 downto 63),
            o_FU(0 downto 63) => load_3_to_mul_8(0 downto 31),

            r_COMPUTING => r_r_COMPUTING_load_3,
            r_LOAD_INST => r_r_LOAD_INST_load_3,
            r_LOAD_NEXT_INST => r_r_LOAD_NEXT_INST_load_3,
            r_INPUT_INST => r_r_INPUT_INST_load_3,
            r_RESET => r_r_RESET_load_3

                );

    load_4: FU
        generic map (
            INSTRUCTIONS => 0,
            BITWIDTH => 63,
            RF_DEPTH => -1,
            INPUT_PORTS => 0,
            OUTPUT_PORTS => 0,
            TOTAL_EXE_CYCLES => 146,
            OPCODE => 0,
            IS_MUL => 0
        )
        port map(
            i_clock => r_CLOCK,
            i_FU(0 downto 63) => load_4_input(0 downto 63),
            o_FU(0 downto 63) => load_4_to_mul_7(0 downto 31),

            r_COMPUTING => r_r_COMPUTING_load_4,
            r_LOAD_INST => r_r_LOAD_INST_load_4,
            r_LOAD_NEXT_INST => r_r_LOAD_NEXT_INST_load_4,
            r_INPUT_INST => r_r_INPUT_INST_load_4,
            r_RESET => r_r_RESET_load_4

                );

    load_5: FU
        generic map (
            INSTRUCTIONS => 0,
            BITWIDTH => 63,
            RF_DEPTH => -1,
            INPUT_PORTS => 0,
            OUTPUT_PORTS => 0,
            TOTAL_EXE_CYCLES => 146,
            OPCODE => 0,
            IS_MUL => 0
        )
        port map(
            i_clock => r_CLOCK,
            i_FU(0 downto 63) => load_5_input(0 downto 63),
            o_FU(0 downto 63) => load_5_to_mul_4(0 downto 31),

            r_COMPUTING => r_r_COMPUTING_load_5,
            r_LOAD_INST => r_r_LOAD_INST_load_5,
            r_LOAD_NEXT_INST => r_r_LOAD_NEXT_INST_load_5,
            r_INPUT_INST => r_r_INPUT_INST_load_5,
            r_RESET => r_r_RESET_load_5

                );

    store_0: FU
        generic map (
            INSTRUCTIONS => 1,
            BITWIDTH => 63,
            RF_DEPTH => 0,
            INPUT_PORTS => 0,
            OUTPUT_PORTS => 0,
            TOTAL_EXE_CYCLES => 146,
            OPCODE => 0,
            IS_MUL => 0
        )
        port map(
            i_clock => r_CLOCK,
            i_FU(0 downto 63) => add_0_to_store_0(0 downto 63),
            o_FU(0 downto 63) => store_0_output(0 downto 63),

            r_COMPUTING => r_r_COMPUTING_store_0,
            r_LOAD_INST => r_r_LOAD_INST_store_0,
            r_LOAD_NEXT_INST => r_r_LOAD_NEXT_INST_store_0,
            r_INPUT_INST => r_r_INPUT_INST_store_0,
            r_RESET => r_r_RESET_store_0

                );

    store_1: FU
        generic map (
            INSTRUCTIONS => 1,
            BITWIDTH => 63,
            RF_DEPTH => 0,
            INPUT_PORTS => 0,
            OUTPUT_PORTS => 0,
            TOTAL_EXE_CYCLES => 146,
            OPCODE => 0,
            IS_MUL => 0
        )
        port map(
            i_clock => r_CLOCK,
            i_FU(0 downto 63) => add_3_to_store_1(0 downto 63),
            o_FU(0 downto 63) => store_1_output(0 downto 63),

            r_COMPUTING => r_r_COMPUTING_store_1,
            r_LOAD_INST => r_r_LOAD_INST_store_1,
            r_LOAD_NEXT_INST => r_r_LOAD_NEXT_INST_store_1,
            r_INPUT_INST => r_r_INPUT_INST_store_1,
            r_RESET => r_r_RESET_store_1

                );

    store_2: FU
        generic map (
            INSTRUCTIONS => 1,
            BITWIDTH => 63,
            RF_DEPTH => 0,
            INPUT_PORTS => 0,
            OUTPUT_PORTS => 0,
            TOTAL_EXE_CYCLES => 146,
            OPCODE => 0,
            IS_MUL => 0
        )
        port map(
            i_clock => r_CLOCK,
            i_FU(0 downto 63) => add_2_to_store_2(0 downto 63),
            o_FU(0 downto 63) => store_2_output(0 downto 63),

            r_COMPUTING => r_r_COMPUTING_store_2,
            r_LOAD_INST => r_r_LOAD_INST_store_2,
            r_LOAD_NEXT_INST => r_r_LOAD_NEXT_INST_store_2,
            r_INPUT_INST => r_r_INPUT_INST_store_2,
            r_RESET => r_r_RESET_store_2

                );

    store_3: FU
        generic map (
            INSTRUCTIONS => 1,
            BITWIDTH => 63,
            RF_DEPTH => 0,
            INPUT_PORTS => 0,
            OUTPUT_PORTS => 0,
            TOTAL_EXE_CYCLES => 146,
            OPCODE => 0,
            IS_MUL => 0
        )
        port map(
            i_clock => r_CLOCK,
            i_FU(0 downto 63) => add_4_to_store_3(0 downto 63),
            o_FU(0 downto 63) => store_3_output(0 downto 63),

            r_COMPUTING => r_r_COMPUTING_store_3,
            r_LOAD_INST => r_r_LOAD_INST_store_3,
            r_LOAD_NEXT_INST => r_r_LOAD_NEXT_INST_store_3,
            r_INPUT_INST => r_r_INPUT_INST_store_3,
            r_RESET => r_r_RESET_store_3

                );

    store_4: FU
        generic map (
            INSTRUCTIONS => 1,
            BITWIDTH => 63,
            RF_DEPTH => 0,
            INPUT_PORTS => 0,
            OUTPUT_PORTS => 0,
            TOTAL_EXE_CYCLES => 146,
            OPCODE => 0,
            IS_MUL => 0
        )
        port map(
            i_clock => r_CLOCK,
            i_FU(0 downto 63) => add_1_to_store_4(0 downto 63),
            o_FU(0 downto 63) => store_4_output(0 downto 63),

            r_COMPUTING => r_r_COMPUTING_store_4,
            r_LOAD_INST => r_r_LOAD_INST_store_4,
            r_LOAD_NEXT_INST => r_r_LOAD_NEXT_INST_store_4,
            r_INPUT_INST => r_r_INPUT_INST_store_4,
            r_RESET => r_r_RESET_store_4

                );

    p_CLK_GEN: process is
    begin
        wait for c_CLOCK_PERIOD/2;
        r_CLOCK <= not r_CLOCK;
    end process p_CLK_GEN;

end behave;library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use IEEE.math_real."ceil";
use IEEE.math_real."log2";

entity Generated_hardware is
end Generated_hardware;

architecture behave of Generated_hardware is
    constant c_CLOCK_PERIOD : time := 50 ns;
    signal r_CLOCK: std_logic :='0';
    signal add_0_to_add_1 : std_logic_vector(63 downto 0);
    signal add_0_to_add_3 : std_logic_vector(63 downto 0);
    signal add_0_to_add_4 : std_logic_vector(63 downto 0);
    signal add_0_to_store_0 : std_logic_vector(63 downto 0);
    signal add_1_to_add_0 : std_logic_vector(63 downto 0);
    signal add_1_to_add_1 : std_logic_vector(63 downto 0);
    signal add_1_to_add_2 : std_logic_vector(63 downto 0);
    signal add_1_to_store_4 : std_logic_vector(63 downto 0);
    signal add_2_to_add_0 : std_logic_vector(63 downto 0);
    signal add_2_to_add_4 : std_logic_vector(63 downto 0);
    signal add_2_to_store_2 : std_logic_vector(63 downto 0);
    signal add_3_to_add_3 : std_logic_vector(63 downto 0);
    signal add_3_to_store_1 : std_logic_vector(63 downto 0);
    signal add_4_to_add_0 : std_logic_vector(63 downto 0);
    signal add_4_to_add_4 : std_logic_vector(63 downto 0);
    signal add_4_to_store_3 : std_logic_vector(63 downto 0);
    signal add_5_to_add_2 : std_logic_vector(63 downto 0);
    signal mul_0_to_add_0 : std_logic_vector(31 downto 0);
    signal mul_0_to_add_1 : std_logic_vector(31 downto 0);
    signal mul_0_to_add_2 : std_logic_vector(31 downto 0);
    signal mul_0_to_add_3 : std_logic_vector(31 downto 0);
    signal mul_0_to_add_4 : std_logic_vector(31 downto 0);
    signal mul_1_to_add_0 : std_logic_vector(31 downto 0);
    signal mul_1_to_add_1 : std_logic_vector(31 downto 0);
    signal mul_2_to_add_5 : std_logic_vector(31 downto 0);
    signal mul_3_to_add_1 : std_logic_vector(31 downto 0);
    signal mul_3_to_add_3 : std_logic_vector(31 downto 0);
    signal mul_3_to_add_4 : std_logic_vector(31 downto 0);
    signal mul_4_to_add_2 : std_logic_vector(31 downto 0);
    signal mul_4_to_add_4 : std_logic_vector(31 downto 0);
    signal mul_5_to_add_2 : std_logic_vector(31 downto 0);
    signal mul_6_to_add_3 : std_logic_vector(31 downto 0);
    signal mul_7_to_add_1 : std_logic_vector(31 downto 0);
    signal mul_8_to_add_5 : std_logic_vector(31 downto 0);
    signal load_0_to_mul_0 : std_logic_vector(31 downto 0);
    signal load_0_to_mul_1 : std_logic_vector(31 downto 0);
    signal load_0_to_mul_2 : std_logic_vector(31 downto 0);
    signal load_0_to_mul_3 : std_logic_vector(31 downto 0);
    signal load_0_to_mul_4 : std_logic_vector(31 downto 0);
    signal load_0_to_mul_5 : std_logic_vector(31 downto 0);
    signal load_0_to_mul_6 : std_logic_vector(31 downto 0);
    signal load_0_to_mul_7 : std_logic_vector(31 downto 0);
    signal load_0_to_mul_8 : std_logic_vector(31 downto 0);
    signal load_1_to_mul_5 : std_logic_vector(31 downto 0);
    signal load_2_to_mul_6 : std_logic_vector(31 downto 0);
    signal load_3_to_mul_8 : std_logic_vector(31 downto 0);
    signal load_4_to_mul_7 : std_logic_vector(31 downto 0);
    signal load_5_to_mul_4 : std_logic_vector(31 downto 0);
    signal load_0_input : std_logic_vector(63 downto 0);
    signal load_1_input : std_logic_vector(63 downto 0);
    signal load_2_input : std_logic_vector(63 downto 0);
    signal load_3_input : std_logic_vector(63 downto 0);
    signal load_4_input : std_logic_vector(63 downto 0);
    signal load_5_input : std_logic_vector(63 downto 0);
    signal store_0_output : std_logic_vector(63 downto 0);
    signal store_1_output : std_logic_vector(63 downto 0);
    signal store_2_output : std_logic_vector(63 downto 0);
    signal store_3_output : std_logic_vector(63 downto 0);
    signal store_4_output : std_logic_vector(63 downto 0);
    signal r_r_COMPUTING_add_0 : std_logic := '0';
    signal r_r_LOAD_INST_add_0 : std_logic := '0';
    signal r_r_LOAD_NEXT_INST_add_0 : std_logic := '0';
    signal r_r_INPUT_INST_add_0 : std_logic_vector(34 downto 0);
    signal r_r_RESET_add_0 : std_logic :='0';
    signal r_r_COMPUTING_add_1 : std_logic := '0';
    signal r_r_LOAD_INST_add_1 : std_logic := '0';
    signal r_r_LOAD_NEXT_INST_add_1 : std_logic := '0';
    signal r_r_INPUT_INST_add_1 : std_logic_vector(30 downto 0);
    signal r_r_RESET_add_1 : std_logic :='0';
    signal r_r_COMPUTING_add_2 : std_logic := '0';
    signal r_r_LOAD_INST_add_2 : std_logic := '0';
    signal r_r_LOAD_NEXT_INST_add_2 : std_logic := '0';
    signal r_r_INPUT_INST_add_2 : std_logic_vector(30 downto 0);
    signal r_r_RESET_add_2 : std_logic :='0';
    signal r_r_COMPUTING_add_3 : std_logic := '0';
    signal r_r_LOAD_INST_add_3 : std_logic := '0';
    signal r_r_LOAD_NEXT_INST_add_3 : std_logic := '0';
    signal r_r_INPUT_INST_add_3 : std_logic_vector(26 downto 0);
    signal r_r_RESET_add_3 : std_logic :='0';
    signal r_r_COMPUTING_add_4 : std_logic := '0';
    signal r_r_LOAD_INST_add_4 : std_logic := '0';
    signal r_r_LOAD_NEXT_INST_add_4 : std_logic := '0';
    signal r_r_INPUT_INST_add_4 : std_logic_vector(30 downto 0);
    signal r_r_RESET_add_4 : std_logic :='0';
    signal r_r_COMPUTING_add_5 : std_logic := '0';
    signal r_r_LOAD_INST_add_5 : std_logic := '0';
    signal r_r_LOAD_NEXT_INST_add_5 : std_logic := '0';
    signal r_r_INPUT_INST_add_5 : std_logic_vector(20 downto 0);
    signal r_r_RESET_add_5 : std_logic :='0';
    signal r_r_COMPUTING_mul_0 : std_logic := '0';
    signal r_r_LOAD_INST_mul_0 : std_logic := '0';
    signal r_r_LOAD_NEXT_INST_mul_0 : std_logic := '0';
    signal r_r_INPUT_INST_mul_0 : std_logic_vector(29 downto 0);
    signal r_r_RESET_mul_0 : std_logic :='0';
    signal r_r_COMPUTING_mul_1 : std_logic := '0';
    signal r_r_LOAD_INST_mul_1 : std_logic := '0';
    signal r_r_LOAD_NEXT_INST_mul_1 : std_logic := '0';
    signal r_r_INPUT_INST_mul_1 : std_logic_vector(25 downto 0);
    signal r_r_RESET_mul_1 : std_logic :='0';
    signal r_r_COMPUTING_mul_2 : std_logic := '0';
    signal r_r_LOAD_INST_mul_2 : std_logic := '0';
    signal r_r_LOAD_NEXT_INST_mul_2 : std_logic := '0';
    signal r_r_INPUT_INST_mul_2 : std_logic_vector(17 downto 0);
    signal r_r_RESET_mul_2 : std_logic :='0';
    signal r_r_COMPUTING_mul_3 : std_logic := '0';
    signal r_r_LOAD_INST_mul_3 : std_logic := '0';
    signal r_r_LOAD_NEXT_INST_mul_3 : std_logic := '0';
    signal r_r_INPUT_INST_mul_3 : std_logic_vector(21 downto 0);
    signal r_r_RESET_mul_3 : std_logic :='0';
    signal r_r_COMPUTING_mul_4 : std_logic := '0';
    signal r_r_LOAD_INST_mul_4 : std_logic := '0';
    signal r_r_LOAD_NEXT_INST_mul_4 : std_logic := '0';
    signal r_r_INPUT_INST_mul_4 : std_logic_vector(24 downto 0);
    signal r_r_RESET_mul_4 : std_logic :='0';
    signal r_r_COMPUTING_mul_5 : std_logic := '0';
    signal r_r_LOAD_INST_mul_5 : std_logic := '0';
    signal r_r_LOAD_NEXT_INST_mul_5 : std_logic := '0';
    signal r_r_INPUT_INST_mul_5 : std_logic_vector(20 downto 0);
    signal r_r_RESET_mul_5 : std_logic :='0';
    signal r_r_COMPUTING_mul_6 : std_logic := '0';
    signal r_r_LOAD_INST_mul_6 : std_logic := '0';
    signal r_r_LOAD_NEXT_INST_mul_6 : std_logic := '0';
    signal r_r_INPUT_INST_mul_6 : std_logic_vector(20 downto 0);
    signal r_r_RESET_mul_6 : std_logic :='0';
    signal r_r_COMPUTING_mul_7 : std_logic := '0';
    signal r_r_LOAD_INST_mul_7 : std_logic := '0';
    signal r_r_LOAD_NEXT_INST_mul_7 : std_logic := '0';
    signal r_r_INPUT_INST_mul_7 : std_logic_vector(20 downto 0);
    signal r_r_RESET_mul_7 : std_logic :='0';
    signal r_r_COMPUTING_mul_8 : std_logic := '0';
    signal r_r_LOAD_INST_mul_8 : std_logic := '0';
    signal r_r_LOAD_NEXT_INST_mul_8 : std_logic := '0';
    signal r_r_INPUT_INST_mul_8 : std_logic_vector(20 downto 0);
    signal r_r_RESET_mul_8 : std_logic :='0';
    signal r_r_COMPUTING_load_0 : std_logic := '0';
    signal r_r_LOAD_INST_load_0 : std_logic := '0';
    signal r_r_LOAD_NEXT_INST_load_0 : std_logic := '0';
    signal r_r_INPUT_INST_load_0 : std_logic_vector(17 downto 0);
    signal r_r_RESET_load_0 : std_logic :='0';
    signal r_r_COMPUTING_load_1 : std_logic := '0';
    signal r_r_LOAD_INST_load_1 : std_logic := '0';
    signal r_r_LOAD_NEXT_INST_load_1 : std_logic := '0';
    signal r_r_INPUT_INST_load_1 : std_logic_vector(13 downto 0);
    signal r_r_RESET_load_1 : std_logic :='0';
    signal r_r_COMPUTING_load_2 : std_logic := '0';
    signal r_r_LOAD_INST_load_2 : std_logic := '0';
    signal r_r_LOAD_NEXT_INST_load_2 : std_logic := '0';
    signal r_r_INPUT_INST_load_2 : std_logic_vector(13 downto 0);
    signal r_r_RESET_load_2 : std_logic :='0';
    signal r_r_COMPUTING_load_3 : std_logic := '0';
    signal r_r_LOAD_INST_load_3 : std_logic := '0';
    signal r_r_LOAD_NEXT_INST_load_3 : std_logic := '0';
    signal r_r_INPUT_INST_load_3 : std_logic_vector(13 downto 0);
    signal r_r_RESET_load_3 : std_logic :='0';
    signal r_r_COMPUTING_load_4 : std_logic := '0';
    signal r_r_LOAD_INST_load_4 : std_logic := '0';
    signal r_r_LOAD_NEXT_INST_load_4 : std_logic := '0';
    signal r_r_INPUT_INST_load_4 : std_logic_vector(13 downto 0);
    signal r_r_RESET_load_4 : std_logic :='0';
    signal r_r_COMPUTING_load_5 : std_logic := '0';
    signal r_r_LOAD_INST_load_5 : std_logic := '0';
    signal r_r_LOAD_NEXT_INST_load_5 : std_logic := '0';
    signal r_r_INPUT_INST_load_5 : std_logic_vector(13 downto 0);
    signal r_r_RESET_load_5 : std_logic :='0';
    signal r_r_COMPUTING_store_0 : std_logic := '0';
    signal r_r_LOAD_INST_store_0 : std_logic := '0';
    signal r_r_LOAD_NEXT_INST_store_0 : std_logic := '0';
    signal r_r_INPUT_INST_store_0 : std_logic_vector(17 downto 0);
    signal r_r_RESET_store_0 : std_logic :='0';
    signal r_r_COMPUTING_store_1 : std_logic := '0';
    signal r_r_LOAD_INST_store_1 : std_logic := '0';
    signal r_r_LOAD_NEXT_INST_store_1 : std_logic := '0';
    signal r_r_INPUT_INST_store_1 : std_logic_vector(17 downto 0);
    signal r_r_RESET_store_1 : std_logic :='0';
    signal r_r_COMPUTING_store_2 : std_logic := '0';
    signal r_r_LOAD_INST_store_2 : std_logic := '0';
    signal r_r_LOAD_NEXT_INST_store_2 : std_logic := '0';
    signal r_r_INPUT_INST_store_2 : std_logic_vector(17 downto 0);
    signal r_r_RESET_store_2 : std_logic :='0';
    signal r_r_COMPUTING_store_3 : std_logic := '0';
    signal r_r_LOAD_INST_store_3 : std_logic := '0';
    signal r_r_LOAD_NEXT_INST_store_3 : std_logic := '0';
    signal r_r_INPUT_INST_store_3 : std_logic_vector(17 downto 0);
    signal r_r_RESET_store_3 : std_logic :='0';
    signal r_r_COMPUTING_store_4 : std_logic := '0';
    signal r_r_LOAD_INST_store_4 : std_logic := '0';
    signal r_r_LOAD_NEXT_INST_store_4 : std_logic := '0';
    signal r_r_INPUT_INST_store_4 : std_logic_vector(17 downto 0);
    signal r_r_RESET_store_4 : std_logic :='0';


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

    add_0: FU
        generic map (
            INSTRUCTIONS => 6,
            BITWIDTH => 63,
            RF_DEPTH => 5,
            INPUT_PORTS => 4,
            OUTPUT_PORTS => 3,
            TOTAL_EXE_CYCLES => 146,
            OPCODE => 0,
            IS_MUL => 0
        )
        port map(
            i_clock => r_CLOCK,
            i_FU(0 downto 63) => add_1_to_add_0(0 downto 63),
            i_FU(64 downto 127) => add_2_to_add_0(0 downto 63),
            i_FU(128 downto 191) => add_4_to_add_0(0 downto 63),
            i_FU(192 downto 255) => mul_0_to_add_0(0 downto 31),
            i_FU(256 downto 319) => mul_1_to_add_0(0 downto 31),
            o_FU(0 downto 63) => add_0_to_add_1(0 downto 63),
            o_FU(64 downto 127) => add_0_to_add_3(0 downto 63),
            o_FU(128 downto 191) => add_0_to_add_4(0 downto 63),
            o_FU(192 downto 255) => add_0_to_store_0(0 downto 63),

            r_COMPUTING => r_r_COMPUTING_add_0,
            r_LOAD_INST => r_r_LOAD_INST_add_0,
            r_LOAD_NEXT_INST => r_r_LOAD_NEXT_INST_add_0,
            r_INPUT_INST => r_r_INPUT_INST_add_0,
            r_RESET => r_r_RESET_add_0

                );

    add_1: FU
        generic map (
            INSTRUCTIONS => 5,
            BITWIDTH => 63,
            RF_DEPTH => 2,
            INPUT_PORTS => 5,
            OUTPUT_PORTS => 3,
            TOTAL_EXE_CYCLES => 146,
            OPCODE => 0,
            IS_MUL => 0
        )
        port map(
            i_clock => r_CLOCK,
            i_FU(0 downto 63) => add_0_to_add_1(0 downto 63),
            i_FU(64 downto 127) => add_1_to_add_1(0 downto 63),
            i_FU(128 downto 191) => mul_0_to_add_1(0 downto 31),
            i_FU(192 downto 255) => mul_1_to_add_1(0 downto 31),
            i_FU(256 downto 319) => mul_3_to_add_1(0 downto 31),
            i_FU(320 downto 383) => mul_7_to_add_1(0 downto 31),
            o_FU(0 downto 63) => add_1_to_add_0(0 downto 63),
            o_FU(64 downto 127) => add_1_to_add_1(0 downto 63),
            o_FU(128 downto 191) => add_1_to_add_2(0 downto 63),
            o_FU(192 downto 255) => add_1_to_store_4(0 downto 63),

            r_COMPUTING => r_r_COMPUTING_add_1,
            r_LOAD_INST => r_r_LOAD_INST_add_1,
            r_LOAD_NEXT_INST => r_r_LOAD_NEXT_INST_add_1,
            r_INPUT_INST => r_r_INPUT_INST_add_1,
            r_RESET => r_r_RESET_add_1

                );

    add_2: FU
        generic map (
            INSTRUCTIONS => 3,
            BITWIDTH => 63,
            RF_DEPTH => 2,
            INPUT_PORTS => 4,
            OUTPUT_PORTS => 2,
            TOTAL_EXE_CYCLES => 146,
            OPCODE => 0,
            IS_MUL => 0
        )
        port map(
            i_clock => r_CLOCK,
            i_FU(0 downto 63) => add_1_to_add_2(0 downto 63),
            i_FU(64 downto 127) => add_5_to_add_2(0 downto 63),
            i_FU(128 downto 191) => mul_0_to_add_2(0 downto 31),
            i_FU(192 downto 255) => mul_4_to_add_2(0 downto 31),
            i_FU(256 downto 319) => mul_5_to_add_2(0 downto 31),
            o_FU(0 downto 63) => add_2_to_add_0(0 downto 63),
            o_FU(64 downto 127) => add_2_to_add_4(0 downto 63),
            o_FU(128 downto 191) => add_2_to_store_2(0 downto 63),

            r_COMPUTING => r_r_COMPUTING_add_2,
            r_LOAD_INST => r_r_LOAD_INST_add_2,
            r_LOAD_NEXT_INST => r_r_LOAD_NEXT_INST_add_2,
            r_INPUT_INST => r_r_INPUT_INST_add_2,
            r_RESET => r_r_RESET_add_2

                );

    add_3: FU
        generic map (
            INSTRUCTIONS => 1,
            BITWIDTH => 63,
            RF_DEPTH => 0,
            INPUT_PORTS => 4,
            OUTPUT_PORTS => 1,
            TOTAL_EXE_CYCLES => 146,
            OPCODE => 0,
            IS_MUL => 0
        )
        port map(
            i_clock => r_CLOCK,
            i_FU(0 downto 63) => add_0_to_add_3(0 downto 63),
            i_FU(64 downto 127) => add_3_to_add_3(0 downto 63),
            i_FU(128 downto 191) => mul_0_to_add_3(0 downto 31),
            i_FU(192 downto 255) => mul_3_to_add_3(0 downto 31),
            i_FU(256 downto 319) => mul_6_to_add_3(0 downto 31),
            o_FU(0 downto 63) => add_3_to_add_3(0 downto 63),
            o_FU(64 downto 127) => add_3_to_store_1(0 downto 63),

            r_COMPUTING => r_r_COMPUTING_add_3,
            r_LOAD_INST => r_r_LOAD_INST_add_3,
            r_LOAD_NEXT_INST => r_r_LOAD_NEXT_INST_add_3,
            r_INPUT_INST => r_r_INPUT_INST_add_3,
            r_RESET => r_r_RESET_add_3

                );

    add_4: FU
        generic map (
            INSTRUCTIONS => 3,
            BITWIDTH => 63,
            RF_DEPTH => 2,
            INPUT_PORTS => 5,
            OUTPUT_PORTS => 2,
            TOTAL_EXE_CYCLES => 146,
            OPCODE => 0,
            IS_MUL => 0
        )
        port map(
            i_clock => r_CLOCK,
            i_FU(0 downto 63) => add_0_to_add_4(0 downto 63),
            i_FU(64 downto 127) => add_2_to_add_4(0 downto 63),
            i_FU(128 downto 191) => add_4_to_add_4(0 downto 63),
            i_FU(192 downto 255) => mul_0_to_add_4(0 downto 31),
            i_FU(256 downto 319) => mul_3_to_add_4(0 downto 31),
            i_FU(320 downto 383) => mul_4_to_add_4(0 downto 31),
            o_FU(0 downto 63) => add_4_to_add_0(0 downto 63),
            o_FU(64 downto 127) => add_4_to_add_4(0 downto 63),
            o_FU(128 downto 191) => add_4_to_store_3(0 downto 63),

            r_COMPUTING => r_r_COMPUTING_add_4,
            r_LOAD_INST => r_r_LOAD_INST_add_4,
            r_LOAD_NEXT_INST => r_r_LOAD_NEXT_INST_add_4,
            r_INPUT_INST => r_r_INPUT_INST_add_4,
            r_RESET => r_r_RESET_add_4

                );

    add_5: FU
        generic map (
            INSTRUCTIONS => 1,
            BITWIDTH => 63,
            RF_DEPTH => 0,
            INPUT_PORTS => 1,
            OUTPUT_PORTS => 0,
            TOTAL_EXE_CYCLES => 146,
            OPCODE => 0,
            IS_MUL => 0
        )
        port map(
            i_clock => r_CLOCK,
            i_FU(0 downto 63) => mul_2_to_add_5(0 downto 31),
            i_FU(64 downto 127) => mul_8_to_add_5(0 downto 31),
            o_FU(0 downto 63) => add_5_to_add_2(0 downto 63),

            r_COMPUTING => r_r_COMPUTING_add_5,
            r_LOAD_INST => r_r_LOAD_INST_add_5,
            r_LOAD_NEXT_INST => r_r_LOAD_NEXT_INST_add_5,
            r_INPUT_INST => r_r_INPUT_INST_add_5,
            r_RESET => r_r_RESET_add_5

                );

    mul_0: FU
        generic map (
            INSTRUCTIONS => 19,
            BITWIDTH => 31,
            RF_DEPTH => 11,
            INPUT_PORTS => 0,
            OUTPUT_PORTS => 4,
            TOTAL_EXE_CYCLES => 146,
            OPCODE => 1,
            IS_MUL => 1
        )
        port map(
            i_clock => r_CLOCK,
            i_FU(0 downto 31) => load_0_to_mul_0(0 downto 31),
            o_FU(0 downto 31) => mul_0_to_add_0(0 downto 31),
            o_FU(32 downto 63) => mul_0_to_add_1(0 downto 31),
            o_FU(64 downto 95) => mul_0_to_add_2(0 downto 31),
            o_FU(96 downto 127) => mul_0_to_add_3(0 downto 31),
            o_FU(128 downto 159) => mul_0_to_add_4(0 downto 31),

            r_COMPUTING => r_r_COMPUTING_mul_0,
            r_LOAD_INST => r_r_LOAD_INST_mul_0,
            r_LOAD_NEXT_INST => r_r_LOAD_NEXT_INST_mul_0,
            r_INPUT_INST => r_r_INPUT_INST_mul_0,
            r_RESET => r_r_RESET_mul_0

                );

    mul_1: FU
        generic map (
            INSTRUCTIONS => 8,
            BITWIDTH => 31,
            RF_DEPTH => 5,
            INPUT_PORTS => 0,
            OUTPUT_PORTS => 1,
            TOTAL_EXE_CYCLES => 146,
            OPCODE => 1,
            IS_MUL => 1
        )
        port map(
            i_clock => r_CLOCK,
            i_FU(0 downto 31) => load_0_to_mul_1(0 downto 31),
            o_FU(0 downto 31) => mul_1_to_add_0(0 downto 31),
            o_FU(32 downto 63) => mul_1_to_add_1(0 downto 31),

            r_COMPUTING => r_r_COMPUTING_mul_1,
            r_LOAD_INST => r_r_LOAD_INST_mul_1,
            r_LOAD_NEXT_INST => r_r_LOAD_NEXT_INST_mul_1,
            r_INPUT_INST => r_r_INPUT_INST_mul_1,
            r_RESET => r_r_RESET_mul_1

                );

    mul_2: FU
        generic map (
            INSTRUCTIONS => 1,
            BITWIDTH => 31,
            RF_DEPTH => 0,
            INPUT_PORTS => 0,
            OUTPUT_PORTS => 0,
            TOTAL_EXE_CYCLES => 146,
            OPCODE => 1,
            IS_MUL => 1
        )
        port map(
            i_clock => r_CLOCK,
            i_FU(0 downto 31) => load_0_to_mul_2(0 downto 31),
            o_FU(0 downto 31) => mul_2_to_add_5(0 downto 31),

            r_COMPUTING => r_r_COMPUTING_mul_2,
            r_LOAD_INST => r_r_LOAD_INST_mul_2,
            r_LOAD_NEXT_INST => r_r_LOAD_NEXT_INST_mul_2,
            r_INPUT_INST => r_r_INPUT_INST_mul_2,
            r_RESET => r_r_RESET_mul_2

                );

    mul_3: FU
        generic map (
            INSTRUCTIONS => 3,
            BITWIDTH => 31,
            RF_DEPTH => 2,
            INPUT_PORTS => 0,
            OUTPUT_PORTS => 2,
            TOTAL_EXE_CYCLES => 146,
            OPCODE => 1,
            IS_MUL => 1
        )
        port map(
            i_clock => r_CLOCK,
            i_FU(0 downto 31) => load_0_to_mul_3(0 downto 31),
            o_FU(0 downto 31) => mul_3_to_add_1(0 downto 31),
            o_FU(32 downto 63) => mul_3_to_add_3(0 downto 31),
            o_FU(64 downto 95) => mul_3_to_add_4(0 downto 31),

            r_COMPUTING => r_r_COMPUTING_mul_3,
            r_LOAD_INST => r_r_LOAD_INST_mul_3,
            r_LOAD_NEXT_INST => r_r_LOAD_NEXT_INST_mul_3,
            r_INPUT_INST => r_r_INPUT_INST_mul_3,
            r_RESET => r_r_RESET_mul_3

                );

    mul_4: FU
        generic map (
            INSTRUCTIONS => 2,
            BITWIDTH => 31,
            RF_DEPTH => 1,
            INPUT_PORTS => 1,
            OUTPUT_PORTS => 1,
            TOTAL_EXE_CYCLES => 146,
            OPCODE => 1,
            IS_MUL => 1
        )
        port map(
            i_clock => r_CLOCK,
            i_FU(0 downto 31) => load_0_to_mul_4(0 downto 31),
            i_FU(32 downto 63) => load_5_to_mul_4(0 downto 31),
            o_FU(0 downto 31) => mul_4_to_add_2(0 downto 31),
            o_FU(32 downto 63) => mul_4_to_add_4(0 downto 31),

            r_COMPUTING => r_r_COMPUTING_mul_4,
            r_LOAD_INST => r_r_LOAD_INST_mul_4,
            r_LOAD_NEXT_INST => r_r_LOAD_NEXT_INST_mul_4,
            r_INPUT_INST => r_r_INPUT_INST_mul_4,
            r_RESET => r_r_RESET_mul_4

                );

    mul_5: FU
        generic map (
            INSTRUCTIONS => 1,
            BITWIDTH => 31,
            RF_DEPTH => 0,
            INPUT_PORTS => 1,
            OUTPUT_PORTS => 0,
            TOTAL_EXE_CYCLES => 146,
            OPCODE => 1,
            IS_MUL => 1
        )
        port map(
            i_clock => r_CLOCK,
            i_FU(0 downto 31) => load_0_to_mul_5(0 downto 31),
            i_FU(32 downto 63) => load_1_to_mul_5(0 downto 31),
            o_FU(0 downto 31) => mul_5_to_add_2(0 downto 31),

            r_COMPUTING => r_r_COMPUTING_mul_5,
            r_LOAD_INST => r_r_LOAD_INST_mul_5,
            r_LOAD_NEXT_INST => r_r_LOAD_NEXT_INST_mul_5,
            r_INPUT_INST => r_r_INPUT_INST_mul_5,
            r_RESET => r_r_RESET_mul_5

                );

    mul_6: FU
        generic map (
            INSTRUCTIONS => 1,
            BITWIDTH => 31,
            RF_DEPTH => 0,
            INPUT_PORTS => 1,
            OUTPUT_PORTS => 0,
            TOTAL_EXE_CYCLES => 146,
            OPCODE => 1,
            IS_MUL => 1
        )
        port map(
            i_clock => r_CLOCK,
            i_FU(0 downto 31) => load_0_to_mul_6(0 downto 31),
            i_FU(32 downto 63) => load_2_to_mul_6(0 downto 31),
            o_FU(0 downto 31) => mul_6_to_add_3(0 downto 31),

            r_COMPUTING => r_r_COMPUTING_mul_6,
            r_LOAD_INST => r_r_LOAD_INST_mul_6,
            r_LOAD_NEXT_INST => r_r_LOAD_NEXT_INST_mul_6,
            r_INPUT_INST => r_r_INPUT_INST_mul_6,
            r_RESET => r_r_RESET_mul_6

                );

    mul_7: FU
        generic map (
            INSTRUCTIONS => 1,
            BITWIDTH => 31,
            RF_DEPTH => 0,
            INPUT_PORTS => 1,
            OUTPUT_PORTS => 0,
            TOTAL_EXE_CYCLES => 146,
            OPCODE => 1,
            IS_MUL => 1
        )
        port map(
            i_clock => r_CLOCK,
            i_FU(0 downto 31) => load_0_to_mul_7(0 downto 31),
            i_FU(32 downto 63) => load_4_to_mul_7(0 downto 31),
            o_FU(0 downto 31) => mul_7_to_add_1(0 downto 31),

            r_COMPUTING => r_r_COMPUTING_mul_7,
            r_LOAD_INST => r_r_LOAD_INST_mul_7,
            r_LOAD_NEXT_INST => r_r_LOAD_NEXT_INST_mul_7,
            r_INPUT_INST => r_r_INPUT_INST_mul_7,
            r_RESET => r_r_RESET_mul_7

                );

    mul_8: FU
        generic map (
            INSTRUCTIONS => 1,
            BITWIDTH => 31,
            RF_DEPTH => 0,
            INPUT_PORTS => 1,
            OUTPUT_PORTS => 0,
            TOTAL_EXE_CYCLES => 146,
            OPCODE => 1,
            IS_MUL => 1
        )
        port map(
            i_clock => r_CLOCK,
            i_FU(0 downto 31) => load_0_to_mul_8(0 downto 31),
            i_FU(32 downto 63) => load_3_to_mul_8(0 downto 31),
            o_FU(0 downto 31) => mul_8_to_add_5(0 downto 31),

            r_COMPUTING => r_r_COMPUTING_mul_8,
            r_LOAD_INST => r_r_LOAD_INST_mul_8,
            r_LOAD_NEXT_INST => r_r_LOAD_NEXT_INST_mul_8,
            r_INPUT_INST => r_r_INPUT_INST_mul_8,
            r_RESET => r_r_RESET_mul_8

                );

    load_0: FU
        generic map (
            INSTRUCTIONS => 48,
            BITWIDTH => 63,
            RF_DEPTH => 0,
            INPUT_PORTS => 0,
            OUTPUT_PORTS => 8,
            TOTAL_EXE_CYCLES => 146,
            OPCODE => 0,
            IS_MUL => 0
        )
        port map(
            i_clock => r_CLOCK,
            i_FU(0 downto 63) => load_0_input(0 downto 63),
            o_FU(0 downto 63) => load_0_to_mul_0(0 downto 31),
            o_FU(64 downto 127) => load_0_to_mul_1(0 downto 31),
            o_FU(128 downto 191) => load_0_to_mul_2(0 downto 31),
            o_FU(192 downto 255) => load_0_to_mul_3(0 downto 31),
            o_FU(256 downto 319) => load_0_to_mul_4(0 downto 31),
            o_FU(320 downto 383) => load_0_to_mul_5(0 downto 31),
            o_FU(384 downto 447) => load_0_to_mul_6(0 downto 31),
            o_FU(448 downto 511) => load_0_to_mul_7(0 downto 31),
            o_FU(512 downto 575) => load_0_to_mul_8(0 downto 31),

            r_COMPUTING => r_r_COMPUTING_load_0,
            r_LOAD_INST => r_r_LOAD_INST_load_0,
            r_LOAD_NEXT_INST => r_r_LOAD_NEXT_INST_load_0,
            r_INPUT_INST => r_r_INPUT_INST_load_0,
            r_RESET => r_r_RESET_load_0

                );

    load_1: FU
        generic map (
            INSTRUCTIONS => 0,
            BITWIDTH => 63,
            RF_DEPTH => -1,
            INPUT_PORTS => 0,
            OUTPUT_PORTS => 0,
            TOTAL_EXE_CYCLES => 146,
            OPCODE => 0,
            IS_MUL => 0
        )
        port map(
            i_clock => r_CLOCK,
            i_FU(0 downto 63) => load_1_input(0 downto 63),
            o_FU(0 downto 63) => load_1_to_mul_5(0 downto 31),

            r_COMPUTING => r_r_COMPUTING_load_1,
            r_LOAD_INST => r_r_LOAD_INST_load_1,
            r_LOAD_NEXT_INST => r_r_LOAD_NEXT_INST_load_1,
            r_INPUT_INST => r_r_INPUT_INST_load_1,
            r_RESET => r_r_RESET_load_1

                );

    load_2: FU
        generic map (
            INSTRUCTIONS => 0,
            BITWIDTH => 63,
            RF_DEPTH => -1,
            INPUT_PORTS => 0,
            OUTPUT_PORTS => 0,
            TOTAL_EXE_CYCLES => 146,
            OPCODE => 0,
            IS_MUL => 0
        )
        port map(
            i_clock => r_CLOCK,
            i_FU(0 downto 63) => load_2_input(0 downto 63),
            o_FU(0 downto 63) => load_2_to_mul_6(0 downto 31),

            r_COMPUTING => r_r_COMPUTING_load_2,
            r_LOAD_INST => r_r_LOAD_INST_load_2,
            r_LOAD_NEXT_INST => r_r_LOAD_NEXT_INST_load_2,
            r_INPUT_INST => r_r_INPUT_INST_load_2,
            r_RESET => r_r_RESET_load_2

                );

    load_3: FU
        generic map (
            INSTRUCTIONS => 0,
            BITWIDTH => 63,
            RF_DEPTH => -1,
            INPUT_PORTS => 0,
            OUTPUT_PORTS => 0,
            TOTAL_EXE_CYCLES => 146,
            OPCODE => 0,
            IS_MUL => 0
        )
        port map(
            i_clock => r_CLOCK,
            i_FU(0 downto 63) => load_3_input(0 downto 63),
            o_FU(0 downto 63) => load_3_to_mul_8(0 downto 31),

            r_COMPUTING => r_r_COMPUTING_load_3,
            r_LOAD_INST => r_r_LOAD_INST_load_3,
            r_LOAD_NEXT_INST => r_r_LOAD_NEXT_INST_load_3,
            r_INPUT_INST => r_r_INPUT_INST_load_3,
            r_RESET => r_r_RESET_load_3

                );

    load_4: FU
        generic map (
            INSTRUCTIONS => 0,
            BITWIDTH => 63,
            RF_DEPTH => -1,
            INPUT_PORTS => 0,
            OUTPUT_PORTS => 0,
            TOTAL_EXE_CYCLES => 146,
            OPCODE => 0,
            IS_MUL => 0
        )
        port map(
            i_clock => r_CLOCK,
            i_FU(0 downto 63) => load_4_input(0 downto 63),
            o_FU(0 downto 63) => load_4_to_mul_7(0 downto 31),

            r_COMPUTING => r_r_COMPUTING_load_4,
            r_LOAD_INST => r_r_LOAD_INST_load_4,
            r_LOAD_NEXT_INST => r_r_LOAD_NEXT_INST_load_4,
            r_INPUT_INST => r_r_INPUT_INST_load_4,
            r_RESET => r_r_RESET_load_4

                );

    load_5: FU
        generic map (
            INSTRUCTIONS => 0,
            BITWIDTH => 63,
            RF_DEPTH => -1,
            INPUT_PORTS => 0,
            OUTPUT_PORTS => 0,
            TOTAL_EXE_CYCLES => 146,
            OPCODE => 0,
            IS_MUL => 0
        )
        port map(
            i_clock => r_CLOCK,
            i_FU(0 downto 63) => load_5_input(0 downto 63),
            o_FU(0 downto 63) => load_5_to_mul_4(0 downto 31),

            r_COMPUTING => r_r_COMPUTING_load_5,
            r_LOAD_INST => r_r_LOAD_INST_load_5,
            r_LOAD_NEXT_INST => r_r_LOAD_NEXT_INST_load_5,
            r_INPUT_INST => r_r_INPUT_INST_load_5,
            r_RESET => r_r_RESET_load_5

                );

    store_0: FU
        generic map (
            INSTRUCTIONS => 1,
            BITWIDTH => 63,
            RF_DEPTH => 0,
            INPUT_PORTS => 0,
            OUTPUT_PORTS => 0,
            TOTAL_EXE_CYCLES => 146,
            OPCODE => 0,
            IS_MUL => 0
        )
        port map(
            i_clock => r_CLOCK,
            i_FU(0 downto 63) => add_0_to_store_0(0 downto 63),
            o_FU(0 downto 63) => store_0_output(0 downto 63),

            r_COMPUTING => r_r_COMPUTING_store_0,
            r_LOAD_INST => r_r_LOAD_INST_store_0,
            r_LOAD_NEXT_INST => r_r_LOAD_NEXT_INST_store_0,
            r_INPUT_INST => r_r_INPUT_INST_store_0,
            r_RESET => r_r_RESET_store_0

                );

    store_1: FU
        generic map (
            INSTRUCTIONS => 1,
            BITWIDTH => 63,
            RF_DEPTH => 0,
            INPUT_PORTS => 0,
            OUTPUT_PORTS => 0,
            TOTAL_EXE_CYCLES => 146,
            OPCODE => 0,
            IS_MUL => 0
        )
        port map(
            i_clock => r_CLOCK,
            i_FU(0 downto 63) => add_3_to_store_1(0 downto 63),
            o_FU(0 downto 63) => store_1_output(0 downto 63),

            r_COMPUTING => r_r_COMPUTING_store_1,
            r_LOAD_INST => r_r_LOAD_INST_store_1,
            r_LOAD_NEXT_INST => r_r_LOAD_NEXT_INST_store_1,
            r_INPUT_INST => r_r_INPUT_INST_store_1,
            r_RESET => r_r_RESET_store_1

                );

    store_2: FU
        generic map (
            INSTRUCTIONS => 1,
            BITWIDTH => 63,
            RF_DEPTH => 0,
            INPUT_PORTS => 0,
            OUTPUT_PORTS => 0,
            TOTAL_EXE_CYCLES => 146,
            OPCODE => 0,
            IS_MUL => 0
        )
        port map(
            i_clock => r_CLOCK,
            i_FU(0 downto 63) => add_2_to_store_2(0 downto 63),
            o_FU(0 downto 63) => store_2_output(0 downto 63),

            r_COMPUTING => r_r_COMPUTING_store_2,
            r_LOAD_INST => r_r_LOAD_INST_store_2,
            r_LOAD_NEXT_INST => r_r_LOAD_NEXT_INST_store_2,
            r_INPUT_INST => r_r_INPUT_INST_store_2,
            r_RESET => r_r_RESET_store_2

                );

    store_3: FU
        generic map (
            INSTRUCTIONS => 1,
            BITWIDTH => 63,
            RF_DEPTH => 0,
            INPUT_PORTS => 0,
            OUTPUT_PORTS => 0,
            TOTAL_EXE_CYCLES => 146,
            OPCODE => 0,
            IS_MUL => 0
        )
        port map(
            i_clock => r_CLOCK,
            i_FU(0 downto 63) => add_4_to_store_3(0 downto 63),
            o_FU(0 downto 63) => store_3_output(0 downto 63),

            r_COMPUTING => r_r_COMPUTING_store_3,
            r_LOAD_INST => r_r_LOAD_INST_store_3,
            r_LOAD_NEXT_INST => r_r_LOAD_NEXT_INST_store_3,
            r_INPUT_INST => r_r_INPUT_INST_store_3,
            r_RESET => r_r_RESET_store_3

                );

    store_4: FU
        generic map (
            INSTRUCTIONS => 1,
            BITWIDTH => 63,
            RF_DEPTH => 0,
            INPUT_PORTS => 0,
            OUTPUT_PORTS => 0,
            TOTAL_EXE_CYCLES => 146,
            OPCODE => 0,
            IS_MUL => 0
        )
        port map(
            i_clock => r_CLOCK,
            i_FU(0 downto 63) => add_1_to_store_4(0 downto 63),
            o_FU(0 downto 63) => store_4_output(0 downto 63),

            r_COMPUTING => r_r_COMPUTING_store_4,
            r_LOAD_INST => r_r_LOAD_INST_store_4,
            r_LOAD_NEXT_INST => r_r_LOAD_NEXT_INST_store_4,
            r_INPUT_INST => r_r_INPUT_INST_store_4,
            r_RESET => r_r_RESET_store_4

                );

    p_CLK_GEN: process is
    begin
        wait for c_CLOCK_PERIOD/2;
        r_CLOCK <= not r_CLOCK;
    end process p_CLK_GEN;

end behave;