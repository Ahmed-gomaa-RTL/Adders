// FILE NAME: HALF_FULL.v
// TYPE: module
// AUTHOR: Ahmed Gomaa
// AUTHORâS EMAIL:ahmed.gomaa.work150@gmail.com
//---------------------------------------------------------------------
// PURPOSE: Digital Design Project
//---------------------------------------------------------------------
// KEYWORDS: Ripple Carry
//---------------------------------------------------------------------
// Copyright 2025, Ahmed Gomaa, All rights reserved.
//---------------------------------------------------------------------

////////////////////////////////////////////////////////
//////////////// Module Difinition ///////////////////// 
////////////////////////////////////////////////////////
module RIPPLE_CARRY (
    input         wire         [3:0]           A          ,
    input         wire         [3:0]           B          ,
    input         wire                         C_IN       ,
    output        wire         [3:0]           S          ,
    output        wire                         C_OUT
);


assign { C_OUT , S } = A + B + C_IN ;

endmodule

