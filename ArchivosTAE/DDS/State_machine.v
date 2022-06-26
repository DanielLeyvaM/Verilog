// Quartus Prime Verilog Template
// 4-State Mealy state machine

// A Mealy machine has outputs that depend on both the state and 
// the inputs.  When the inputs change, the outputs are updated
// immediately, without waiting for a clock edge.  The outputs
// can be written more than once per state or per clock cycle.

module State_machine
#(parameter ADDR_WIDTH=5)
(
	input	clk, reset, stop,
	input [1:0] control,
	input [2:0] dds_word,
	output reg [ADDR_WIDTH-1:0] dds_control,
	output reg we_control
);

	// Declare state register
	reg [1:0] state;
	reg tuning_selected,ram_init;
	reg [ADDR_WIDTH-1:0] counter,incremento;
	
	// Declare states
	parameter IDLE = 0, INIT = 1, TUNNING_WORD = 2, DDS_RUN = 3;
	
	// Determine the next state synchronously, based on the
	// current state and the input
	always @ (posedge clk or posedge reset) begin
		if (reset) begin
			state <= IDLE;
			tuning_selected<=0;
			ram_init<=0;
			counter<=0;
		end
		else
			
			case (state)
				IDLE:
				begin	
					counter<=0;
					if (control==0 || stop==1)
					begin
						state <= IDLE;
					end
					else if (control==1 && tuning_selected==0 && stop==0)
					begin
						state <= INIT;
					end
					else if (control==2 && ram_init==1 && stop==0)
					begin
						state <= TUNNING_WORD;
					end
				end
				INIT:
				begin
					if (control!=1)
					begin
						state <= IDLE;
					end
					else
					begin
						counter<=counter+1;
						ram_init<=1;
						state <= INIT;
					end
				end
				TUNNING_WORD: 
				begin
					if (dds_word==0)
					begin
						state <= TUNNING_WORD;
					end
					else if (stop==0 && tuning_selected==0)
					begin
						tuning_selected<=1;
						case(dds_word)
							1: incremento<=1;
							2: incremento<=2;
							3: incremento<=4;
							4: incremento<=8;
							5: incremento<=16;
							6: incremento<=32;
							7: incremento<=64;
							default: incremento<=0;
						endcase
					end
					else	
						state <= DDS_RUN;
					
				end
				DDS_RUN:
				begin
					if (!stop)
					begin
						counter<=counter+incremento;
						state <= DDS_RUN;
						
					end
					else
					begin
						state <= IDLE;
						tuning_selected<=0;
											
					end
				end
				default: 
					state<=IDLE;
			endcase
	end

	// Determine the output based only on the current state
	// and the input (do not wait for a clock edge).
	always @ (state or counter or stop)
	begin
			case (state)
				IDLE: 
				begin
					we_control<=0;
					dds_control<=0;
				end
				INIT:
				begin
					we_control<=1;
					dds_control<=counter;
				end
				TUNNING_WORD:
				begin
					if(stop==1)
						dds_control<=0;
					else
						dds_control<=counter;
				end
				DDS_RUN:
				begin
					we_control<=0;
					dds_control<=counter;
				end
			endcase
	end

endmodule
