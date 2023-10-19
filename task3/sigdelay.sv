module sigdelay #(
  parameter     A_WIDTH = 8,
                D_WIDTH = 8
)(
  // interface signals
  input  logic                  clk,      
  input  logic                  rst,      
  input  logic                  en,       
  input  logic                  wr_en,
  input  logic                  rd_en,
  input  logic [A_WIDTH-1:0]    incr,     
  input  logic [D_WIDTH-1:0]    din,      // mic_signal
  input  logic [D_WIDTH-1:0]    offset,   
  output logic [D_WIDTH-1:0]    dout      // delayed_signal
);

  logic  [A_WIDTH-1:0]       address;    

counter addrCounter ( 
  .clk (clk),
  .rst (rst),
  .en (en),
  .incr (incr),
  .count (address) 
);

ram2ports sineRom (
    .clk (clk),
    .wr_addr (address), 
    .rd_addr (address), 
    .din (din),
    .dout (dout),
    .wr_en (wr_en),
    .rd_en (rd_en)
);

endmodule
