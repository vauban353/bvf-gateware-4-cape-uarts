

module apb_ctrl_status
  (
    input         presetn,
    input         pclk,
    input         psel,
    input         penable,
    input         pwrite,
    output        pslverr,
    output        pready,
    input  [7:0]  paddr,
    input  [31:0] pwdata,
    output [31:0] prdata,
    input  [31:0] status,
    output [31:0] control
  );

  reg [31:0] control_value;
  reg [31:0] status_value_o;
  
  assign pslverr = 1'b0;
  assign pready = 1'b1;
  assign control = control_value;

  assign prdata = ((paddr[7:0] == 8'h20)) ? status_value_o[31:0] : 32'h00000000;

  //---------------------------------------------------------------------------
  always @(negedge pclk)
    begin
      if ((psel == 1'b1) & (pwrite == 1'b1) & (penable == 1'b1))
      begin
        case (paddr)
          8'h00:    control_value <= 32'h00000001;
          8'h10:    control_value <= 32'h00000002;
          default:  control_value <= 32'h00000000;
        endcase
      end
    end

  //---------------------------------------------------------------------------
  always @(negedge pclk)
    begin
      status_value_o <= status;
    end

endmodule
