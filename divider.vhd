library ieee;
use ieee.std_logic_1164.all;

entity diagram is 
port (x: in std_logic;
      clk: in std_logic;
      clr: in std_logic;
      y: out std_logic);
      
      end diagram;
      
architecture behavioral of diagram is

type state_x is (a,b,c,d);
signal state: state_x := a;
signal output: std_logic := '0';

begin
process(clk)
begin

if clr='1' then

state <=a; output <='0';

elsif rising_edge(clk) then

if x = '0' then

case state is

     when a => 
     
     state <= b; output <= '0';
     
     when b => 
     
     state <= c; output <= '1';
     
     when c => 
     
     state <= d; output <= '0';
     
     when d => 
     
     state <= a; output <= '1';
     
     end case;
     
elsif x = '1' then

case state is

    when a => 
    
    state <= a; output <= '0';
    
    when b => 
    
    state <= a; output <= '0';
    
    when c => 
    
    state <= c; output <= '0';
    
    when d => 
    
    state <= c; output <= '0';
    
    end case;
    end if;
    end if;
    
    y <= output;
    
    end process;
    end behavioral;
    
    
     