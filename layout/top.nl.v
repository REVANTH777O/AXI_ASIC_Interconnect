module top (alive,
    clk,
    rst);
 output alive;
 input clk;
 input rst;

 wire _00_;
 wire _01_;
 wire _02_;
 wire _03_;
 wire _04_;
 wire _05_;
 wire _06_;
 wire _07_;
 wire _08_;
 wire _09_;
 wire _10_;
 wire _11_;
 wire _12_;
 wire _13_;
 wire _14_;
 wire _15_;
 wire _16_;
 wire _17_;
 wire _18_;
 wire _19_;
 wire _20_;
 wire _21_;
 wire _22_;
 wire _23_;
 wire _24_;
 wire _25_;
 wire _26_;
 wire _27_;
 wire _28_;
 wire _29_;
 wire _30_;
 wire _31_;
 wire _32_;
 wire _33_;
 wire _34_;
 wire _35_;
 wire \interconnect.m_arready ;
 wire \interconnect.m_arvalid ;
 wire \interconnect.m_awvalid ;
 wire \interconnect.m_bready ;
 wire \interconnect.m_bvalid ;
 wire \interconnect.m_rready ;
 wire \interconnect.m_rvalid ;
 wire \interconnect.s_arvalid ;
 wire \interconnect.s_awvalid ;
 wire \interconnect.s_bready ;
 wire \interconnect.s_bvalid ;
 wire \interconnect.s_rready ;
 wire \interconnect.s_rvalid ;
 wire \master.state[0] ;
 wire \master.state[1] ;
 wire \master.state[2] ;
 wire \slave.wr_en ;
 wire net1;
 wire net2;

 sky130_fd_sc_hd__or2b_1 _36_ (.A(\interconnect.m_rvalid ),
    .B_N(\master.state[1] ),
    .X(_17_));
 sky130_fd_sc_hd__nand2_1 _37_ (.A(\interconnect.m_bvalid ),
    .B(\master.state[2] ),
    .Y(_18_));
 sky130_fd_sc_hd__a21oi_1 _38_ (.A1(_17_),
    .A2(_18_),
    .B1(net1),
    .Y(_01_));
 sky130_fd_sc_hd__a21o_1 _39_ (.A1(\master.state[1] ),
    .A2(\interconnect.m_rvalid ),
    .B1(net1),
    .X(_00_));
 sky130_fd_sc_hd__and2b_1 _40_ (.A_N(\interconnect.m_bvalid ),
    .B(\master.state[2] ),
    .X(_19_));
 sky130_fd_sc_hd__inv_2 _41_ (.A(net1),
    .Y(_11_));
 sky130_fd_sc_hd__o21a_1 _42_ (.A1(\master.state[0] ),
    .A2(_19_),
    .B1(_11_),
    .X(_02_));
 sky130_fd_sc_hd__xor2_1 _43_ (.A(\interconnect.m_arvalid ),
    .B(\interconnect.m_rvalid ),
    .X(net2));
 sky130_fd_sc_hd__inv_2 _44_ (.A(\interconnect.m_rready ),
    .Y(_20_));
 sky130_fd_sc_hd__nand2_1 _45_ (.A(\master.state[1] ),
    .B(\interconnect.m_arready ),
    .Y(_21_));
 sky130_fd_sc_hd__a21oi_1 _46_ (.A1(_20_),
    .A2(_21_),
    .B1(_00_),
    .Y(_03_));
 sky130_fd_sc_hd__and3b_1 _47_ (.A_N(\master.state[1] ),
    .B(\master.state[2] ),
    .C(\interconnect.m_bvalid ),
    .X(_22_));
 sky130_fd_sc_hd__o221a_1 _48_ (.A1(_19_),
    .A2(_21_),
    .B1(_22_),
    .B2(\interconnect.m_arvalid ),
    .C1(_11_),
    .X(_04_));
 sky130_fd_sc_hd__a21o_1 _49_ (.A1(\master.state[2] ),
    .A2(\interconnect.m_arready ),
    .B1(\interconnect.m_bready ),
    .X(_23_));
 sky130_fd_sc_hd__and3_1 _50_ (.A(_11_),
    .B(_18_),
    .C(_23_),
    .X(_24_));
 sky130_fd_sc_hd__clkbuf_1 _51_ (.A(_24_),
    .X(_05_));
 sky130_fd_sc_hd__and2b_1 _52_ (.A_N(\master.state[2] ),
    .B(\master.state[0] ),
    .X(_25_));
 sky130_fd_sc_hd__nand2_1 _53_ (.A(\master.state[2] ),
    .B(\interconnect.m_arready ),
    .Y(_26_));
 sky130_fd_sc_hd__o211a_1 _54_ (.A1(\interconnect.m_awvalid ),
    .A2(_25_),
    .B1(_26_),
    .C1(_11_),
    .X(_06_));
 sky130_fd_sc_hd__mux2_1 _55_ (.A0(\interconnect.m_arvalid ),
    .A1(\interconnect.s_arvalid ),
    .S(net1),
    .X(_27_));
 sky130_fd_sc_hd__clkbuf_1 _56_ (.A(_27_),
    .X(_07_));
 sky130_fd_sc_hd__mux2_1 _57_ (.A0(\interconnect.m_bready ),
    .A1(\interconnect.s_bready ),
    .S(net1),
    .X(_28_));
 sky130_fd_sc_hd__clkbuf_1 _58_ (.A(_28_),
    .X(_08_));
 sky130_fd_sc_hd__mux2_1 _59_ (.A0(\interconnect.m_awvalid ),
    .A1(\interconnect.s_awvalid ),
    .S(net1),
    .X(_29_));
 sky130_fd_sc_hd__clkbuf_1 _60_ (.A(_29_),
    .X(_09_));
 sky130_fd_sc_hd__and2_1 _61_ (.A(\interconnect.s_rvalid ),
    .B(_11_),
    .X(_30_));
 sky130_fd_sc_hd__clkbuf_1 _62_ (.A(_30_),
    .X(_10_));
 sky130_fd_sc_hd__and2_1 _63_ (.A(\interconnect.s_bvalid ),
    .B(_11_),
    .X(_31_));
 sky130_fd_sc_hd__clkbuf_1 _64_ (.A(_31_),
    .X(_12_));
 sky130_fd_sc_hd__or2b_1 _65_ (.A(net1),
    .B_N(\interconnect.s_awvalid ),
    .X(_32_));
 sky130_fd_sc_hd__xnor2_1 _66_ (.A(\slave.wr_en ),
    .B(_32_),
    .Y(_13_));
 sky130_fd_sc_hd__nand2_1 _67_ (.A(\interconnect.s_rvalid ),
    .B(\interconnect.s_rready ),
    .Y(_33_));
 sky130_fd_sc_hd__o211a_1 _68_ (.A1(\interconnect.s_rvalid ),
    .A2(\interconnect.s_arvalid ),
    .B1(_11_),
    .C1(_33_),
    .X(_14_));
 sky130_fd_sc_hd__a21oi_1 _69_ (.A1(\interconnect.s_awvalid ),
    .A2(\slave.wr_en ),
    .B1(\interconnect.s_bvalid ),
    .Y(_34_));
 sky130_fd_sc_hd__a211oi_1 _70_ (.A1(\interconnect.s_bvalid ),
    .A2(\interconnect.s_bready ),
    .B1(_34_),
    .C1(net1),
    .Y(_15_));
 sky130_fd_sc_hd__mux2_1 _71_ (.A0(\interconnect.m_rready ),
    .A1(\interconnect.s_rready ),
    .S(net1),
    .X(_35_));
 sky130_fd_sc_hd__clkbuf_1 _72_ (.A(_35_),
    .X(_16_));
 sky130_fd_sc_hd__dfxtp_1 _73_ (.CLK(clk),
    .D(_00_),
    .Q(\master.state[0] ));
 sky130_fd_sc_hd__dfxtp_1 _74_ (.CLK(clk),
    .D(_01_),
    .Q(\master.state[1] ));
 sky130_fd_sc_hd__dfxtp_1 _75_ (.CLK(clk),
    .D(_02_),
    .Q(\master.state[2] ));
 sky130_fd_sc_hd__dfxtp_1 _76_ (.CLK(clk),
    .D(_03_),
    .Q(\interconnect.m_rready ));
 sky130_fd_sc_hd__dfxtp_1 _77_ (.CLK(clk),
    .D(_04_),
    .Q(\interconnect.m_arvalid ));
 sky130_fd_sc_hd__dfxtp_1 _78_ (.CLK(clk),
    .D(_05_),
    .Q(\interconnect.m_bready ));
 sky130_fd_sc_hd__dfxtp_1 _79_ (.CLK(clk),
    .D(_06_),
    .Q(\interconnect.m_awvalid ));
 sky130_fd_sc_hd__dfxtp_1 _80_ (.CLK(clk),
    .D(_07_),
    .Q(\interconnect.s_arvalid ));
 sky130_fd_sc_hd__dfxtp_1 _81_ (.CLK(clk),
    .D(_08_),
    .Q(\interconnect.s_bready ));
 sky130_fd_sc_hd__dfxtp_1 _82_ (.CLK(clk),
    .D(_09_),
    .Q(\interconnect.s_awvalid ));
 sky130_fd_sc_hd__dfxtp_1 _83_ (.CLK(clk),
    .D(_10_),
    .Q(\interconnect.m_rvalid ));
 sky130_fd_sc_hd__dfxtp_1 _84_ (.CLK(clk),
    .D(_11_),
    .Q(\interconnect.m_arready ));
 sky130_fd_sc_hd__dfxtp_1 _85_ (.CLK(clk),
    .D(_12_),
    .Q(\interconnect.m_bvalid ));
 sky130_fd_sc_hd__dfxtp_1 _86_ (.CLK(clk),
    .D(_13_),
    .Q(\slave.wr_en ));
 sky130_fd_sc_hd__dfxtp_1 _87_ (.CLK(clk),
    .D(_14_),
    .Q(\interconnect.s_rvalid ));
 sky130_fd_sc_hd__dfxtp_1 _88_ (.CLK(clk),
    .D(_15_),
    .Q(\interconnect.s_bvalid ));
 sky130_fd_sc_hd__dfxtp_1 _89_ (.CLK(clk),
    .D(_16_),
    .Q(\interconnect.s_rready ));
 sky130_fd_sc_hd__decap_3 PHY_0 ();
 sky130_fd_sc_hd__decap_3 PHY_1 ();
 sky130_fd_sc_hd__decap_3 PHY_2 ();
 sky130_fd_sc_hd__decap_3 PHY_3 ();
 sky130_fd_sc_hd__decap_3 PHY_4 ();
 sky130_fd_sc_hd__decap_3 PHY_5 ();
 sky130_fd_sc_hd__decap_3 PHY_6 ();
 sky130_fd_sc_hd__decap_3 PHY_7 ();
 sky130_fd_sc_hd__decap_3 PHY_8 ();
 sky130_fd_sc_hd__decap_3 PHY_9 ();
 sky130_fd_sc_hd__decap_3 PHY_10 ();
 sky130_fd_sc_hd__decap_3 PHY_11 ();
 sky130_fd_sc_hd__decap_3 PHY_12 ();
 sky130_fd_sc_hd__decap_3 PHY_13 ();
 sky130_fd_sc_hd__decap_3 PHY_14 ();
 sky130_fd_sc_hd__decap_3 PHY_15 ();
 sky130_fd_sc_hd__decap_3 PHY_16 ();
 sky130_fd_sc_hd__decap_3 PHY_17 ();
 sky130_fd_sc_hd__decap_3 PHY_18 ();
 sky130_fd_sc_hd__decap_3 PHY_19 ();
 sky130_fd_sc_hd__decap_3 PHY_20 ();
 sky130_fd_sc_hd__decap_3 PHY_21 ();
 sky130_fd_sc_hd__decap_3 PHY_22 ();
 sky130_fd_sc_hd__decap_3 PHY_23 ();
 sky130_fd_sc_hd__decap_3 PHY_24 ();
 sky130_fd_sc_hd__decap_3 PHY_25 ();
 sky130_fd_sc_hd__decap_3 PHY_26 ();
 sky130_fd_sc_hd__decap_3 PHY_27 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_28 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_29 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_30 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_31 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_32 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_33 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_34 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_35 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_36 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_37 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_38 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_39 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_40 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_41 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_42 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_43 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_44 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_45 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_46 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_47 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_48 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_49 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_50 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_51 ();
 sky130_fd_sc_hd__buf_2 input1 (.A(rst),
    .X(net1));
 sky130_fd_sc_hd__clkbuf_4 output2 (.A(net2),
    .X(alive));
endmodule
