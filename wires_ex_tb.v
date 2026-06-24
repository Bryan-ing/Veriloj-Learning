module wires_ex_tb;
reg a, b, c, d;
wire out, out_n;

wires_ex uut (
    .a(a),
    .b(b),
    .c(c),
    .d(d),
    .out(out),
    .out_n(out_n)
);

initial begin

//creamos archivo de señales para ver la simulación
    $dumpfile("wires_ex_tb.vcd");
    $dumpvars(0, wires_ex_tb);
    //probamos con las entradas a, b, c y d en diferentes combinaciones de 0 y 1
    // Test case 1
    a = 0; b = 0; c = 0; d = 0;
    #10;

    // Test case 2
    a = 0; b = 1; c = 0; d = 1;
    #10;

    // Test case 3
    a = 1; b = 0; c = 1; d = 0;
    #10;
    
    // Test case 4
    a = 1; b = 1; c = 1; d = 1;
    #10;
    $finish;
end
endmodule