library verilog;
use verilog.vl_types.all;
entity formula_vlg_sample_tst is
    port(
        sum             : in     vl_logic_vector(4 downto 0);
        sampler_tx      : out    vl_logic
    );
end formula_vlg_sample_tst;
