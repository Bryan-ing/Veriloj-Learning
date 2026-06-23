module xnor_gate_tb;
reg a,b;
wire out;

xnor_gate uut(
    .a(a),
    .b(b),
    .out(out)
);

initial begin
//creamos archivo de señales
$dumpfile("xnor_gate.vcd");
$dumpvars(0, xnor_gate_tb);

//pruebas con las entradas

a = 0; b = 0; #10;
a = 0; b = 1; #10;
a = 1; b = 0; #10;
a = 1; b = 1; #10;
$finish;
end
endmodule 
