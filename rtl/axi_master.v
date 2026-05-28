// --------------------------------------------------
// AXI Master (Simplified AXI-Lite)
// --------------------------------------------------
module axi_master (
    input  wire clk,
    input  wire rst,

    // Write Address Channel
    output reg  awvalid,
    input  wire awready,
    output reg  [31:0] awaddr,

    // Write Data Channel
    output reg  wvalid,
    input  wire wready,
    output reg  [31:0] wdata,

    // Write Response Channel
    input  wire bvalid,
    output reg  bready,

    // Read Address Channel
    output reg  arvalid,
    input  wire arready,
    output reg  [31:0] araddr,

    // Read Data Channel
    input  wire rvalid,
    output reg  rready,
    input  wire [31:0] rdata
);

    localparam IDLE=0, WRITE=1, READ=2;
    reg [1:0] state;

    always @(posedge clk) begin
        if (rst) begin
            state   <= IDLE;
            awvalid <= 0; wvalid <= 0; bready <= 0;
            arvalid <= 0; rready <= 0;
        end else begin
            case (state)
                IDLE: begin
                    awvalid <= 1;
                    awaddr  <= 32'h0000_0004;
                    wvalid  <= 1;
                    wdata   <= 32'hDEADBEEF;
                    state   <= WRITE;
                end
                WRITE: begin
                    if (awready && wready) begin
                        awvalid <= 0;
                        wvalid  <= 0;
                        bready  <= 1;
                    end
                    if (bvalid) begin
                        bready  <= 0;
                        arvalid <= 1;
                        araddr  <= 32'h0000_0004;
                        state   <= READ;
                    end
                end
                READ: begin
                    if (arready) begin
                        arvalid <= 0;
                        rready  <= 1;
                    end
                    if (rvalid) begin
                        rready <= 0;
                        state  <= IDLE;
                    end
                end
            endcase
        end
    end
endmodule

