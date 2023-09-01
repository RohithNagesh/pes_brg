`timescale 1us / 100ps


module pes_brg_tb;

	// Inputs
	reg clk;
	reg reset;
	reg [1:0]sel;

	// Outputs
	wire clkout;

	// Instantiate the Unit Under Test (UUT)
	iiitb_brg uut (.clk(clk), .reset(reset), .sel(sel),.clkout(clkout));

	initial begin
	
	
	clk=0;
	reset=0;
	sel=2'b00;
	#15 reset=1;
	#80 reset = 0;
	#50000 reset =1;
	#15000 reset =0;
	#2000000 $finish;
	
	end
      always
		#40 clk=~clk;
		//initial 
		//#200000 $finish;
		always
		#200000 sel=sel+2'b01;
		initial
		begin
			$dumpfile("iiitb_brg_out.vcd");
          $dumpvars(0, iiitb_brg_tb);
	 end
		
endmodule
