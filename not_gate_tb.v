module not_gate_tb;
reg in;
wire out;
not_gate uut ( .in(in), .out(out) ); //conectamos las señales de prueba a las terminales
initial begin
$dumpfile("not_gate.vcd"); //crea el archivo de ondas con ese nombre ->  vcd significa Value Change Dump
$dumpvars(0, not_gate_tb); //le dice al simulador qué señales guardar

in = 0; #10; //espera 10 unidades
in = 1; #10; //espera igual 10 unidades
$finish;
end;
endmodule