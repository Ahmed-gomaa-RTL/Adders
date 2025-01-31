// FILE NAME: FULL_ADDER.v
// TYPE: module
// AUTHOR: Ahmed Gomaa
// AUTHOR’S EMAIL:ahmed.gomaa.work150@gmail.com
//---------------------------------------------------------------------
// PURPOSE: Digital Design Project
//---------------------------------------------------------------------
// KEYWORDS: Full Adder
//---------------------------------------------------------------------
// Copyright 2025, Ahmed Gomaa, All rights reserved.
//---------------------------------------------------------------------

////////////////////////////////////////////////////////
//////////////// Module Difinition ///////////////////// 
////////////////////////////////////////////////////////
module FULL_ADDER (
    input         wire                         A          ,
    input         wire                         B          ,
    input         wire                         C_IN       ,
    output        wire                         S          ,
    output        wire                         C_OUT
);


assign { C_OUT , S } = A + B + C_IN ;

endmodule





