// Ripple Carry Adder

// 4-bit Adder

module RCA4(A, B, Cin, S, Cout);

    input [3:0] A, B;
    input Cin;
    output [3:0] S;
    output Cout;
    wire C1, C2, C3;
   
   // 4 instantiated 1-bit Full Adder
   
    FullAdder fa0(A[0], B[0], Cin, C1, S[0]);
    FullAdder fa0(A[1], B[1], C1, C2, S[1]);
    FullAdder fa0(A[2], B[2], C2, C3, S[2]);
    FullAdder fa0(A[3], B[3], C3, Cout, S[3]);
   
endmodule
