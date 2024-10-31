library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Pmod_Read_One_Second is
    Port ( 
        CLK         : in  STD_LOGIC;
        RESET       : in  STD_LOGIC;
        PmodJD      : in  STD_LOGIC_VECTOR(7 downto 0);  -- Assuming 8-bit data width for Pmod
        DATA_OUT    : out STD_LOGIC_VECTOR(7 downto 0);  -- Output to capture Pmod data every second
        SSEG_CA     : out STD_LOGIC_VECTOR(7 downto 0);  -- Cathode signals for 7-segment display
        SSEG_AN     : inout STD_LOGIC_VECTOR(7 downto 0)   -- Anode signals to enable individual digits
    );
end Pmod_Read_One_Second;

architecture Behavioral of Pmod_Read_One_Second is

    -- Counter to track 1-second intervals
    signal one_sec_counter : STD_LOGIC_VECTOR(26 downto 0) := (others => '0');
    signal read_pmod       : STD_LOGIC := '0';  -- Signal to trigger data read every second
    signal detection       : STD_LOGIC := '0';  -- Signal set when Pmod JD detects a signal

    constant ONE_SECOND_COUNT : STD_LOGIC_VECTOR(26 downto 0) := "101111101011110000100000000"; -- 100 million for 1-second delay

    -- 7-segment encoding for displaying "4" and "3" on two digits
    constant SEG_4 : STD_LOGIC_VECTOR(7 downto 0) := "10011001"; -- Display "4"
    constant SEG_3 : STD_LOGIC_VECTOR(7 downto 0) := "10110000"; -- Display "3"

begin

    -- Process to count 1 second and set the read_pmod signal
    process (CLK, RESET)
    begin
        if RESET = '1' then
            one_sec_counter <= (others => '0');
            read_pmod <= '0';
        elsif rising_edge(CLK) then
            if one_sec_counter = ONE_SECOND_COUNT then
                one_sec_counter <= (others => '0');
                read_pmod <= '0';  -- Trigger Pmod data read every second
            else
                one_sec_counter <= one_sec_counter + 1;
                read_pmod <= '1';
            end if;
        end if;
    end process;

    -- Process to capture Pmod data every second
    process (CLK, RESET)
    begin
        if RESET = '1' then
            DATA_OUT <= (others => '0');
            detection <= '0';
        elsif rising_edge(CLK) then
            if read_pmod = '1' then
                DATA_OUT <= PmodJD;            -- Capture Pmod data every second
                if PmodJD /= "00000000" then   -- Detect if any PmodJD pins are high
                    detection <= '1';          -- Set detection flag if signal detected
                else
                    detection <= '0';
                end if;
            end if;
        end if;
    end process;

    -- Process to display "43" on 7-segment when detection is made
    -- Process to display "43" on 7-segment when detection is made
    process (CLK, RESET)
    begin
        if RESET = '1' then
            SSEG_AN <= "11111111";  -- Disable all anodes (all digits off)
            SSEG_CA <= "11111111";  -- Turn off all segments
        elsif rising_edge(CLK) then
            if detection = '1' then
                SSEG_AN <= "11111101";  -- Enable two digits only (Anode 1 and 2)
                
                -- Display "4" on the first digit and "3" on the second
                if SSEG_AN(1) = '0' then
                    SSEG_CA <= SEG_4;  -- Display "4"
                else
                    SSEG_CA <= SEG_3;  -- Display "3"
                end if;
            else
                SSEG_AN <= "11111111";  -- Turn off display if no detection
                SSEG_CA <= "11111111";
            end if;
        end if;
    end process;
    
    
end Behavioral;
