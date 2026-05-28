module top (
    input  wire clk,
    input  wire rst,
    output wire alive
);

    // Master ↔ Interconnect
    wire m_awvalid, m_awready;
    wire m_wvalid,  m_wready;
    wire m_bvalid,  m_bready;
    wire m_arvalid, m_arready;
    wire m_rvalid,  m_rready;
    wire [31:0] m_awaddr, m_wdata, m_araddr, m_rdata;

    // Interconnect ↔ Slave
    wire s_awvalid, s_awready;
    wire s_wvalid,  s_wready;
    wire s_bvalid,  s_bready;
    wire s_arvalid, s_arready;
    wire s_rvalid,  s_rready;
    wire [31:0] s_awaddr, s_wdata, s_araddr, s_rdata;

    axi_master master (
        .clk(clk), .rst(rst),
        .awvalid(m_awvalid), .awready(m_awready), .awaddr(m_awaddr),
        .wvalid(m_wvalid), .wready(m_wready), .wdata(m_wdata),
        .bvalid(m_bvalid), .bready(m_bready),
        .arvalid(m_arvalid), .arready(m_arready), .araddr(m_araddr),
        .rvalid(m_rvalid), .rready(m_rready), .rdata(m_rdata)
    );

    axi_interconnect interconnect (
        .clk(clk), .rst(rst),

        .m_awvalid(m_awvalid), .m_awready(m_awready), .m_awaddr(m_awaddr),
        .m_wvalid(m_wvalid), .m_wready(m_wready), .m_wdata(m_wdata),
        .m_bvalid(m_bvalid), .m_bready(m_bready),
        .m_arvalid(m_arvalid), .m_arready(m_arready), .m_araddr(m_araddr),
        .m_rvalid(m_rvalid), .m_rready(m_rready), .m_rdata(m_rdata),

        .s_awvalid(s_awvalid), .s_awready(s_awready), .s_awaddr(s_awaddr),
        .s_wvalid(s_wvalid), .s_wready(s_wready), .s_wdata(s_wdata),
        .s_bvalid(s_bvalid), .s_bready(s_bready),
        .s_arvalid(s_arvalid), .s_arready(s_arready), .s_araddr(s_araddr),
        .s_rvalid(s_rvalid), .s_rready(s_rready), .s_rdata(s_rdata)
    );

    axi_slave slave (
        .clk(clk), .rst(rst),
        .awvalid(s_awvalid), .awready(s_awready), .awaddr(s_awaddr),
        .wvalid(s_wvalid), .wready(s_wready), .wdata(s_wdata),
        .bvalid(s_bvalid), .bready(s_bready),
        .arvalid(s_arvalid), .arready(s_arready), .araddr(s_araddr),
        .rvalid(s_rvalid), .rready(s_rready), .rdata(s_rdata)
    );

    assign alive = m_awvalid ^ m_wvalid ^ m_arvalid ^ m_rvalid;

endmodule

