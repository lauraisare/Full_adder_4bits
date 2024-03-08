library verilog;
use verilog.vl_types.all;
entity formula is
    port(
        sum             : in     vl_logic_vector(4 downto 0);
        UN              : out    vl_logic_vector(3 downto 0);
        DC              : out    vl_logic_vector(3 downto 0)
    );
end formula;
