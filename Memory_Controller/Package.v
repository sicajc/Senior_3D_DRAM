////////////////////////////////////////////////////////////////////////
// Project Name: eHome-IV
// Task Name   : Package
// Module Name : Package
// File Name   : Package.v
// Description : External memory interface construction
// Author      : Chih-Yuan Chang
// Revision History:
// Date        : 2013.04.06
////////////////////////////////////////////////////////////////////////

`include "define.v"
`include "Ctrl.v"


module Package(
               i_power_on_rst_n,
               clk,
               clk2,
			   i_command,
               i_write_data,
               o_read_data,
               i_valid,
               o_ba_cmd_pm,
               o_read_data_valid
);

`include "2048Mb_ddr3_parameters.vh"

   // Declare Ports

    //== I/O from System ===============
    input  i_power_on_rst_n;
    input  clk;
    input clk2;
    input  [`DQ_BITS*8-1:0]   i_write_data;
    output [`DQ_BITS*8-1:0]    o_read_data;
    input  [33:0] i_command;
	input  i_valid ;

    output [3:0] o_ba_cmd_pm; //{power_up,power_down,refresh,write,read,active}
    output o_read_data_valid;
    //==================================
    //== Output to slice controller =======

	reg [`DQ_BITS*8-1:0]    o_read_data;
	reg o_read_data_valid;
	reg [3:0]o_ba_cmd_pm ;

    reg  [31:0] command1,command2,command3,command4;
    reg  valid1,valid2,valid3,valid4;
    reg [`DQ_BITS*8-1:0]  write_data1,write_data2,write_data3,write_data4;
	wire  [`DQ_BITS*8-1:0]  read_data1,read_data2,read_data3,read_data4;
    wire [3:0] ba_cmd_pm1,ba_cmd_pm2,ba_cmd_pm3,ba_cmd_pm4; //{power_up,power_down,refresh,write,read,active}
    wire read_data_valid1,read_data_valid2,read_data_valid3,read_data_valid4;
   //===================================



//Slice Controller Module
	// Each rank contains 4 banks, i.e. 4 slices of 3D-DRAM banks.
    Ctrl Rank0 (
               i_power_on_rst_n,
               clk,
               clk2,
               write_data1,
               command1,
               read_data1,
               valid1,
               ba_cmd_pm1,
               read_data_valid1
    );

    Ctrl Rank1 (
               i_power_on_rst_n,
               clk,
               clk2,
               write_data2,
               command2,
               read_data2,
               valid2,
               ba_cmd_pm2,
               read_data_valid2
    );

    Ctrl Rank2 (
               i_power_on_rst_n,
               clk,
               clk2,
               write_data3,
               command3,
               read_data3,
               valid3,
               ba_cmd_pm3,
               read_data_valid3
    );

    Ctrl Rank3 (
               i_power_on_rst_n,
               clk,
               clk2,
               write_data4,
               command4,
               read_data4,
               valid4,
               ba_cmd_pm4,
               read_data_valid4
    );

always@* begin : CMD_DECODER
case(i_command[33:32]) // cmds selects the rank that the user would like to access
    2'b00  : begin
		   command1 = i_command[31:0] ;
		   command2 = 32'b0;
		   command3 = 32'b0;
		   command4 = 32'b0;
		   o_read_data = read_data1;
		   valid1 = i_valid;
		   valid2 = 0;
		   valid3 = 0;
		   valid4 = 0;
		   write_data1 = i_write_data;
		   write_data2 = 128'b0;
		   write_data3 = 128'b0;
		   write_data4 = 128'b0;
		   o_ba_cmd_pm = ba_cmd_pm1;
		   o_read_data_valid = read_data_valid1;
		   end
  2'b01  : begin
		   command2 = i_command[31:0] ;
		   command1 = 32'b0;
		   command3 = 32'b0;
		   command4 = 32'b0;
		   o_read_data = read_data2;
		   valid2 = i_valid;
		   valid1 = 0;
		   valid3 = 0;
		   valid4 = 0;
		   write_data2 = i_write_data;
		   write_data1 = 128'b0;
		   write_data3 = 128'b0;
		   write_data4 = 128'b0;
		   o_ba_cmd_pm = ba_cmd_pm2;
		   o_read_data_valid = read_data_valid2;
		   end
  2'b10  : begin
		   command3 = i_command[31:0] ;
		   command1 = 32'b0;
		   command2 = 32'b0;
		   command4 = 32'b0;
		   o_read_data = read_data3;
		   valid3 = i_valid;
		   valid1 = 0;
		   valid2 = 0;
		   valid4 = 0;
		   write_data3 = i_write_data;
		   write_data1 = 128'b0;
		   write_data2 = 128'b0;
		   write_data4 = 128'b0;
		   o_ba_cmd_pm = ba_cmd_pm3;
		   o_read_data_valid = read_data_valid3;
		   end
  2'b11  : begin
		   command4 = i_command[31:0] ;
		   command1 = 32'b0;
		   command2 = 32'b0;
		   command3 = 32'b0;
		   o_read_data = read_data4;
		   valid4 = i_valid;
		   valid1 = 0;
		   valid2 = 0;
		   valid3 = 0;
		   write_data4 = i_write_data;
		   write_data1 = 128'b0;
		   write_data2 = 128'b0;
		   write_data3 = 128'b0;
		   o_ba_cmd_pm = ba_cmd_pm4;
		   o_read_data_valid = read_data_valid4;
		   end
  default  : begin

		   command1 = 32'b0;
		   command2 = 32'b0;
		   command3 = 32'b0;
		   command4 = 32'b0;
		   //o_read_data = 128'b0;
		   valid1 = 0;
		   valid2 = 0;
		   valid3 = 0;
		   valid4 = 0;
		   write_data1 = 128'b0;
		   write_data2 = 128'b0;
		   write_data3 = 128'b0;
		   write_data4 = 128'b0;
		   //o_ba_cmd_pm = ba_cmd_pm1;
		   //o_read_data_valid = read_data_valid1;
		   end
endcase
end




endmodule