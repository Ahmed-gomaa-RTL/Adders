// FILE NAME: HALF_FULL.v
// TYPE: module
// AUTHOR: Ahmed Gomaa
// AUTHOR’S EMAIL:ahmed.gomaa.work150@gmail.com
//---------------------------------------------------------------------
// PURPOSE: Digital Design Project
//---------------------------------------------------------------------
// KEYWORDS: Full Adder from Half Adder
//---------------------------------------------------------------------
// Copyright 2025, Ahmed Gomaa, All rights reserved.
//---------------------------------------------------------------------

////////////////////////////////////////////////////////
//////////////// Module Difinition ///////////////////// 
////////////////////////////////////////////////////////
module HALF_FULL (
    input         wire                         A          ,
    input         wire                         B          ,
    output        wire                         S          ,
    output        wire                         C_OUT
);


assign { C_OUT , S } = A + B  ;

endmodule


module FULL_ADDER (
    input         wire                         X          ,
    input         wire                         Y          ,
    input         wire                         Z          ,
    output        wire                         S0          ,
    output        wire                         C0
);

wire      S1  ;
wire      C1  ;
wire      C2  ;

HALF_FULL G1 ( .A(X) , .B(Y) , .S(S1) , .C_OUT(C1) )  ;
HALF_FULL G2 ( .A(S1) , .B(Z) , .S(S0) , .C_OUT(C2) )  ;

or G3 ( C0 , C2 , C1 )  ;

endmodule

