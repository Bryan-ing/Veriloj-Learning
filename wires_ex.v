`default_nettype none
module wires_ex(
    input a,
    input b,
    input c,
    input d,
    output out,
    output out_n  );
wire one_wire, two_wire;
assign one_wire = a & b;
assign two_wire = c & d;
assign out = one_wire|two_wire;
assign out_n = ~out;
endmodule