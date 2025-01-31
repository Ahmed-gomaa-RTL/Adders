// FILE NAME: CARRY_LOCK_AHEAD.v
// TYPE: module
// AUTHOR: Ahmed Gomaa
// AUTHOR’S EMAIL:ahmed.gomaa.work150@gmail.com
//---------------------------------------------------------------------
// PURPOSE: Digital Design Project
//---------------------------------------------------------------------
// KEYWORDS: 4 bits adder carry lock ahead
//---------------------------------------------------------------------
// Copyright 2025, Ahmed Gomaa, All rights reserved.
//---------------------------------------------------------------------

////////////////////////////////////////////////////////
//////////////// Module Difinition ///////////////////// 
////////////////////////////////////////////////////////
module CARRY_LOCK_AHEAD (
    input         wire         [3:0]           A          ,
    input         wire         [3:0]           B          ,
    input         wire                         C_IN       ,
    output        wire         [3:0]           S          ,
    output        wire                         C_OUT
);


wire          [3:0]           G         ;
wire          [3:0]           P         ;
wire                          C1        ;
wire                          C2        ;
wire                          C3        ;
wire                          C4        ;

assign   G = A & B  ;
assign   P = A ^ B  ;

assign   C1 = G[0] | ( P[0] & C_IN )  ;
assign   C2 = G[1] | ( P[1] & C1   )  ;
assign   C3 = G[2] | ( P[2] & C2   )  ;
assign   C4 = G[3] | ( P[3] & C3   )  ;

assign   S[0] = P[0] ^ C_IN ;
assign   S[1] = P[1] ^ C1   ;
assign   S[2] = P[2] ^ C2   ;
assign   S[3] = P[3] ^ C3   ;

assign C_OUT = C4  ;

endmodule
