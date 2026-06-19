module nor_gate_tb;
reg a, b;
wire out; //salida

nor_gate uut(
    .a(a),
    .b(b),
    .out(out)
);

initial begin
//creamos el arcvhivo de las señales
$dumpfile("ondas.vcd");
$dumpvars(0, nor_gate_tb);

//preubas con las entradas
a = 0; b = 0; #10;
a = 0; b = 1; #10;
a = 1; b = 0; #10;
a = 1; b = 1; #10;
$finish;
end
endmodule