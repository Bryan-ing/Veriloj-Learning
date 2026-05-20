module and_gate_tb;
    reg a, b;
    wire y;

    // Conectamos el "chip" and_gate a nuestra prueba
    and_gate uut (
        .a(a), 
        .b(b), 
        .y(y)
    );

    initial begin
        // Crea el archivo de ondas para GTKWave
        $dumpfile("ondas.vcd");
        $dumpvars(0, and_gate_tb);

        // Probamos todas las combinaciones (Tabla de verdad)
        a = 0; b = 0; #10;
        a = 0; b = 1; #10;
        a = 1; b = 0; #10;
        a = 1; b = 1; #10;
        
        $finish;
    end
endmodule