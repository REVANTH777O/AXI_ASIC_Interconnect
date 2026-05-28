module axi_slave (
    input  wire clk,
    input  wire rst,

    input  wire awvalid,
    output reg  awready,
    input  wire [31:0] awaddr,

    input  wire wvalid,
    output reg  wready,
    input  wire [31:0] wdata,

    output reg  bvalid,
    input  wire bready,

    input  wire arvalid,
    output reg  arready,
    input  wire [31:0] araddr,

    output reg  rvalid,
    input  wire rready,
    output reg  [31:0] rdata
);

    reg [31:0] mem0, mem1, mem2, mem3;

    reg [31:0] wr_addr;
    reg        wr_en;

    always @(posedge clk) begin
        if (rst) begin
            awready <= 1;
            wready  <= 1;
            bvalid  <= 0;
            arready <= 1;
            rvalid  <= 0;
        end else begin

            // WRITE ADDRESS LATCH
            if (awvalid && awready) begin
                wr_addr <= awaddr[3:2];
                wr_en   <= 1;
            end

            // WRITE DATA
            if (wvalid && wready && wr_en) begin
                case (wr_addr)
                    2'b00: mem0 <= wdata;
                    2'b01: mem1 <= wdata;
                    2'b10: mem2 <= wdata;
                    2'b11: mem3 <= wdata;
                endcase
                bvalid <= 1;
                wr_en  <= 0;
            end

            if (bvalid && bready)
                bvalid <= 0;

            // READ
            if (arvalid && arready) begin
                case (araddr[3:2])
                    2'b00: rdata <= mem0;
                    2'b01: rdata <= mem1;
                    2'b10: rdata <= mem2;
                    2'b11: rdata <= mem3;
                endcase
                rvalid <= 1;
            end

            if (rvalid && rready)
                rvalid <= 0;
        end
    end

endmodule

