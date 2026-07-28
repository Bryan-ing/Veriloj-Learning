module chip7458_test_tb;
reg p1a, p1b, p1c, p1d, p1e, p1f, p2a, p2b, p2c, p2d;
wire p1y,p2y;
top_module uut(
    .p1a(p1a),
    .p1b(p1b),
    .p1c(p1c),
    .p1d(p1d),
    .p1e(p1e),
    .p1f(p1f),
    .p2a(p2a),
    .p2b(p2b),
    .p2c(p2c),
    .p2d(p2d),
    .p1y(p1y),
    .p2y(p2y)
);
initial begin
  //archivo de señales
  $dumpfile("chip7458_test.vcd");
  $dumpvars(0, 7458_test_tb);

  //pruebas con las entradas

  p1a = 0; p1b = 0; p1c = 0; p1d = 0; p1e = 0; p1f = 0; p2a = 0; p2b = 0; p2c = 0; p2d = 0; #10;
  p1a = 1; p1b = 0; p1c = 0; p1d = 0; p1e = 0; p1f = 0; p2a = 0; p2b = 0; p2c = 0; p2d = 0; #10;
end