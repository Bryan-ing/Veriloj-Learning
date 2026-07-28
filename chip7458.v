module chip7458(
    input p1a,p1b,p1c,p1d,p1e,p1f,
    output p1y,
    input p2a,p2b,p2c,p2d,
    output p2y);
    wire p1n,p2n,p3n,p4n;
    assign p1n = p2a&p2b;
    assign p2n = p2c&p2d;
    assign p2y = p1n|p2n;
    assign p3n = p1a&p1c&p1b;
    assign p4n = p1f&p1e&p1d;
    assign p1y = p3n|p4n;
endmodule