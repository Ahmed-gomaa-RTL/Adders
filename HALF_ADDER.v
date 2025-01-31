// FILE NAME: HALF_ADDER.v
// TYPE: module
// AUTHOR: Ahmed Gomaa
// AUTHOR’S EMAIL:ahmed.gomaa.work150@gmail.com
//---------------------------------------------------------------------
// PURPOSE: Digital Design Project
//---------------------------------------------------------------------
// KEYWORDS: Half Adder
//---------------------------------------------------------------------
// Copyright 2025, Ahmed Gomaa, All rights reserved.
//---------------------------------------------------------------------

////////////////////////////////////////////////////////
//////////////// Module Difinition ///////////////////// 
////////////////////////////////////////////////////////
module HALF_ADDER (
    input         wire                         A          ,
    input         wire                         B          ,
    output        wire                         S          ,
    output        wire                         C_OUT
);


assign { C_OUT , S } = A + B  ;

endmodule
