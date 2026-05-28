module axi_interconnect (
    input  wire clk,
    input  wire rst,

    // Master Side
    input  wire m_awvalid,
    output reg  m_awready,
    input  wire [31:0] m_awaddr,

    input  wire m_wvalid,
    output reg  m_wready,
    input  wire [31:0] m_wdata,

    output reg  m_bvalid,
    input  wire m_bready,

    input  wire m_arvalid,
    output reg  m_arready,
    input  wire [31:0] m_araddr,

    output reg  m_rvalid,
    input  wire m_rready,
    output reg  [31:0] m_rdata,

    // Slave Side
    output reg  s_awvalid,
    input  wire s_awready,
    output reg  [31:0] s_awaddr,

    output reg  s_wvalid,
    input  wire s_wready,
    output reg  [31:0] s_wdata,

    input  wire s_bvalid,
    output reg  s_bready,

    output reg  s_arvalid,
    input  wire s_arready,
    output reg  [31:0] s_araddr,

    input  wire s_rvalid,
    output reg  s_rready,
    input  wire [31:0] s_rdata
);

    always @(posedge clk) begin
        if (rst) begin
            m_awready <= 0; m_wready <= 0;
            m_bvalid  <= 0;
            m_arready <= 0;
            m_rvalid  <= 0;
        end else begin

            // WRITE ADDRESS PIPELINE
            s_awvalid <= m_awvalid;
            s_awaddr  <= m_awaddr;
            m_awready <= s_awready;

            // WRITE DATA PIPELINE
            s_wvalid  <= m_wvalid;
            s_wdata   <= m_wdata;
            m_wready  <= s_wready;

            // WRITE RESPONSE
            m_bvalid  <= s_bvalid;
            s_bready  <= m_bready;

            // READ ADDRESS
            s_arvalid <= m_arvalid;
            s_araddr  <= m_araddr;
            m_arready <= s_arready;

            // READ DATA
            m_rvalid  <= s_rvalid;
            m_rdata   <= s_rdata;
            s_rready  <= m_rready;
        end
    end

endmodule

