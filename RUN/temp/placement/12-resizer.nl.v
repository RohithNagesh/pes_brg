module pes_brg (clk,
    clkout,
    reset,
    sel);
 input clk;
 output clkout;
 input reset;
 input [1:0] sel;

 wire _000_;
 wire _001_;
 wire _002_;
 wire _003_;
 wire _004_;
 wire _005_;
 wire _006_;
 wire _007_;
 wire _008_;
 wire _009_;
 wire _010_;
 wire _011_;
 wire _012_;
 wire _013_;
 wire _014_;
 wire _015_;
 wire _016_;
 wire _017_;
 wire _018_;
 wire _019_;
 wire _020_;
 wire _021_;
 wire _022_;
 wire _023_;
 wire _024_;
 wire _025_;
 wire _026_;
 wire _027_;
 wire _028_;
 wire _029_;
 wire _030_;
 wire _031_;
 wire _032_;
 wire _033_;
 wire _034_;
 wire _035_;
 wire _036_;
 wire _037_;
 wire _038_;
 wire _039_;
 wire _040_;
 wire _041_;
 wire _042_;
 wire _043_;
 wire _044_;
 wire _045_;
 wire _046_;
 wire _047_;
 wire _048_;
 wire _049_;
 wire _050_;
 wire _051_;
 wire _052_;
 wire _053_;
 wire _054_;
 wire _055_;
 wire _056_;
 wire _057_;
 wire _058_;
 wire _059_;
 wire _060_;
 wire _061_;
 wire _062_;
 wire _063_;
 wire _064_;
 wire _065_;
 wire _066_;
 wire _067_;
 wire _068_;
 wire _069_;
 wire _070_;
 wire _071_;
 wire _072_;
 wire _073_;
 wire _074_;
 wire _075_;
 wire _076_;
 wire _077_;
 wire _078_;
 wire _079_;
 wire _080_;
 wire _081_;
 wire _082_;
 wire _083_;
 wire _084_;
 wire _085_;
 wire _086_;
 wire _087_;
 wire _088_;
 wire _089_;
 wire _090_;
 wire _091_;
 wire _092_;
 wire _093_;
 wire _094_;
 wire _095_;
 wire _096_;
 wire _097_;
 wire _098_;
 wire _099_;
 wire _100_;
 wire _101_;
 wire _102_;
 wire \cnt1[0] ;
 wire \cnt1[1] ;
 wire \cnt1[2] ;
 wire \cnt1[3] ;
 wire \cnt1[4] ;
 wire \cnt1[5] ;
 wire \cnt2[0] ;
 wire \cnt2[1] ;
 wire \cnt3[0] ;
 wire \cnt3[1] ;
 wire \cnt3[2] ;
 wire \cnt4[0] ;
 wire \cnt4[1] ;
 wire \cnt4[2] ;
 wire \cnt4[3] ;
 wire net1;
 wire net2;
 wire net3;
 wire net4;

 sky130_fd_sc_hd__nand2_1 _103_ (.A(_051_),
    .B(_055_),
    .Y(_057_));
 sky130_fd_sc_hd__nand2_1 _104_ (.A(_056_),
    .B(_057_),
    .Y(_058_));
 sky130_fd_sc_hd__clkbuf_2 _105_ (.A(\cnt1[1] ),
    .X(_059_));
 sky130_fd_sc_hd__clkbuf_2 _106_ (.A(\cnt1[0] ),
    .X(_060_));
 sky130_fd_sc_hd__or2b_1 _107_ (.A(_059_),
    .B_N(_060_),
    .X(_061_));
 sky130_fd_sc_hd__nand3_1 _108_ (.A(_049_),
    .B(_048_),
    .C(\cnt1[5] ),
    .Y(_062_));
 sky130_fd_sc_hd__inv_2 _109_ (.A(net3),
    .Y(_063_));
 sky130_fd_sc_hd__nor2_1 _110_ (.A(net1),
    .B(_063_),
    .Y(_064_));
 sky130_fd_sc_hd__o21ai_2 _111_ (.A1(_061_),
    .A2(_062_),
    .B1(_064_),
    .Y(_065_));
 sky130_fd_sc_hd__o2111ai_1 _112_ (.A1(_054_),
    .A2(_055_),
    .B1(\cnt4[0] ),
    .C1(_058_),
    .D1(_065_),
    .Y(_066_));
 sky130_fd_sc_hd__o21a_1 _113_ (.A1(\cnt4[0] ),
    .A2(_053_),
    .B1(_066_),
    .X(_000_));
 sky130_fd_sc_hd__o211ai_1 _114_ (.A1(_054_),
    .A2(_055_),
    .B1(_058_),
    .C1(_065_),
    .Y(_067_));
 sky130_fd_sc_hd__nor2_1 _115_ (.A(\cnt4[0] ),
    .B(\cnt4[1] ),
    .Y(_068_));
 sky130_fd_sc_hd__nand2_1 _116_ (.A(\cnt4[0] ),
    .B(\cnt4[1] ),
    .Y(_069_));
 sky130_fd_sc_hd__or3b_1 _117_ (.A(_068_),
    .B(_052_),
    .C_N(_069_),
    .X(_070_));
 sky130_fd_sc_hd__inv_2 _118_ (.A(net1),
    .Y(_071_));
 sky130_fd_sc_hd__buf_2 _119_ (.A(_071_),
    .X(_072_));
 sky130_fd_sc_hd__nor3_1 _120_ (.A(net1),
    .B(_051_),
    .C(net2),
    .Y(_073_));
 sky130_fd_sc_hd__a31o_1 _121_ (.A1(_072_),
    .A2(_050_),
    .A3(_051_),
    .B1(_073_),
    .X(_074_));
 sky130_fd_sc_hd__o2bb2ai_1 _122_ (.A1_N(\cnt4[1] ),
    .A2_N(_067_),
    .B1(_070_),
    .B2(_074_),
    .Y(_001_));
 sky130_fd_sc_hd__inv_2 _123_ (.A(\cnt4[2] ),
    .Y(_075_));
 sky130_fd_sc_hd__a221oi_1 _124_ (.A1(_056_),
    .A2(_057_),
    .B1(_050_),
    .B2(_064_),
    .C1(_073_),
    .Y(_076_));
 sky130_fd_sc_hd__nand4b_2 _125_ (.A_N(\cnt4[2] ),
    .B(\cnt4[3] ),
    .C(\cnt4[0] ),
    .D(\cnt4[1] ),
    .Y(_077_));
 sky130_fd_sc_hd__nand3_1 _126_ (.A(\cnt4[0] ),
    .B(\cnt4[1] ),
    .C(\cnt4[2] ),
    .Y(_078_));
 sky130_fd_sc_hd__a21o_1 _127_ (.A1(\cnt4[0] ),
    .A2(\cnt4[1] ),
    .B1(\cnt4[2] ),
    .X(_079_));
 sky130_fd_sc_hd__and4b_1 _128_ (.A_N(_052_),
    .B(_077_),
    .C(_078_),
    .D(_079_),
    .X(_080_));
 sky130_fd_sc_hd__nand4b_1 _129_ (.A_N(_073_),
    .B(_080_),
    .C(_065_),
    .D(_058_),
    .Y(_081_));
 sky130_fd_sc_hd__o21ai_1 _130_ (.A1(_075_),
    .A2(_076_),
    .B1(_081_),
    .Y(_002_));
 sky130_fd_sc_hd__nand4_1 _131_ (.A(\cnt4[0] ),
    .B(\cnt4[1] ),
    .C(\cnt4[2] ),
    .D(\cnt4[3] ),
    .Y(_082_));
 sky130_fd_sc_hd__a31o_1 _132_ (.A1(\cnt4[0] ),
    .A2(\cnt4[1] ),
    .A3(\cnt4[2] ),
    .B1(\cnt4[3] ),
    .X(_083_));
 sky130_fd_sc_hd__nand4b_1 _133_ (.A_N(_052_),
    .B(_077_),
    .C(_082_),
    .D(_083_),
    .Y(_084_));
 sky130_fd_sc_hd__o2bb2ai_1 _134_ (.A1_N(\cnt4[3] ),
    .A2_N(_067_),
    .B1(_084_),
    .B2(_074_),
    .Y(_003_));
 sky130_fd_sc_hd__inv_2 _135_ (.A(net4),
    .Y(_085_));
 sky130_fd_sc_hd__a21oi_1 _136_ (.A1(_072_),
    .A2(_050_),
    .B1(_085_),
    .Y(_086_));
 sky130_fd_sc_hd__inv_2 _137_ (.A(\cnt2[1] ),
    .Y(_087_));
 sky130_fd_sc_hd__o2111ai_1 _138_ (.A1(\cnt2[0] ),
    .A2(_087_),
    .B1(_063_),
    .C1(_071_),
    .D1(_055_),
    .Y(_088_));
 sky130_fd_sc_hd__and2_1 _139_ (.A(net3),
    .B(net2),
    .X(_089_));
 sky130_fd_sc_hd__nand3b_1 _140_ (.A_N(\cnt3[1] ),
    .B(\cnt3[2] ),
    .C(\cnt3[0] ),
    .Y(_090_));
 sky130_fd_sc_hd__nor3b_1 _141_ (.A(net1),
    .B(net2),
    .C_N(net3),
    .Y(_091_));
 sky130_fd_sc_hd__a32oi_2 _142_ (.A1(_089_),
    .A2(_077_),
    .A3(_071_),
    .B1(_090_),
    .B2(_091_),
    .Y(_092_));
 sky130_fd_sc_hd__o21ai_1 _143_ (.A1(_061_),
    .A2(_062_),
    .B1(_071_),
    .Y(_093_));
 sky130_fd_sc_hd__nand4_1 _144_ (.A(_093_),
    .B(_092_),
    .C(_088_),
    .D(_072_),
    .Y(_094_));
 sky130_fd_sc_hd__a32oi_1 _145_ (.A1(_086_),
    .A2(_088_),
    .A3(_092_),
    .B1(_094_),
    .B2(_085_),
    .Y(_004_));
 sky130_fd_sc_hd__o21a_1 _146_ (.A1(_051_),
    .A2(_055_),
    .B1(net1),
    .X(_095_));
 sky130_fd_sc_hd__mux2_1 _147_ (.A0(_072_),
    .A1(_095_),
    .S(_060_),
    .X(_096_));
 sky130_fd_sc_hd__clkbuf_1 _148_ (.A(_096_),
    .X(_005_));
 sky130_fd_sc_hd__or2_1 _149_ (.A(_060_),
    .B(_059_),
    .X(_097_));
 sky130_fd_sc_hd__nand2_1 _150_ (.A(_060_),
    .B(_059_),
    .Y(_098_));
 sky130_fd_sc_hd__buf_2 _151_ (.A(net1),
    .X(_099_));
 sky130_fd_sc_hd__and3_1 _152_ (.A(_056_),
    .B(_059_),
    .C(_099_),
    .X(_100_));
 sky130_fd_sc_hd__a41o_1 _153_ (.A1(_072_),
    .A2(_050_),
    .A3(_097_),
    .A4(_098_),
    .B1(_100_),
    .X(_006_));
 sky130_fd_sc_hd__a21oi_1 _154_ (.A1(_060_),
    .A2(_059_),
    .B1(\cnt1[2] ),
    .Y(_101_));
 sky130_fd_sc_hd__a31o_1 _155_ (.A1(_060_),
    .A2(_059_),
    .A3(\cnt1[2] ),
    .B1(_099_),
    .X(_102_));
 sky130_fd_sc_hd__a2bb2o_1 _156_ (.A1_N(_101_),
    .A2_N(_102_),
    .B1(\cnt1[2] ),
    .B2(_095_),
    .X(_007_));
 sky130_fd_sc_hd__nand4_1 _157_ (.A(_060_),
    .B(_059_),
    .C(\cnt1[3] ),
    .D(\cnt1[2] ),
    .Y(_016_));
 sky130_fd_sc_hd__a31o_1 _158_ (.A1(_060_),
    .A2(_059_),
    .A3(\cnt1[2] ),
    .B1(\cnt1[3] ),
    .X(_017_));
 sky130_fd_sc_hd__a32o_1 _159_ (.A1(_072_),
    .A2(_016_),
    .A3(_017_),
    .B1(\cnt1[3] ),
    .B2(_095_),
    .X(_008_));
 sky130_fd_sc_hd__or2_1 _160_ (.A(_048_),
    .B(_016_),
    .X(_018_));
 sky130_fd_sc_hd__a41o_1 _161_ (.A1(_060_),
    .A2(_059_),
    .A3(\cnt1[3] ),
    .A4(\cnt1[2] ),
    .B1(\cnt1[4] ),
    .X(_019_));
 sky130_fd_sc_hd__a32o_1 _162_ (.A1(_072_),
    .A2(_018_),
    .A3(_019_),
    .B1(\cnt1[4] ),
    .B2(_095_),
    .X(_009_));
 sky130_fd_sc_hd__and3_1 _163_ (.A(_060_),
    .B(_059_),
    .C(\cnt1[2] ),
    .X(_020_));
 sky130_fd_sc_hd__and4_1 _164_ (.A(\cnt1[3] ),
    .B(\cnt1[4] ),
    .C(_020_),
    .D(_071_),
    .X(_021_));
 sky130_fd_sc_hd__a21bo_1 _165_ (.A1(_056_),
    .A2(_099_),
    .B1_N(\cnt1[5] ),
    .X(_022_));
 sky130_fd_sc_hd__o211a_1 _166_ (.A1(_048_),
    .A2(_016_),
    .B1(_050_),
    .C1(_072_),
    .X(_023_));
 sky130_fd_sc_hd__o22a_1 _167_ (.A1(\cnt1[5] ),
    .A2(_021_),
    .B1(_022_),
    .B2(_023_),
    .X(_010_));
 sky130_fd_sc_hd__inv_2 _168_ (.A(\cnt2[0] ),
    .Y(_024_));
 sky130_fd_sc_hd__a21oi_1 _169_ (.A1(_024_),
    .A2(\cnt2[1] ),
    .B1(_099_),
    .Y(_025_));
 sky130_fd_sc_hd__o21a_1 _170_ (.A1(_099_),
    .A2(_055_),
    .B1(_063_),
    .X(_026_));
 sky130_fd_sc_hd__nand3_1 _171_ (.A(_093_),
    .B(_025_),
    .C(_026_),
    .Y(_027_));
 sky130_fd_sc_hd__o21ai_1 _172_ (.A1(_099_),
    .A2(_055_),
    .B1(_063_),
    .Y(_028_));
 sky130_fd_sc_hd__a211oi_1 _173_ (.A1(_072_),
    .A2(_050_),
    .B1(_028_),
    .C1(_024_),
    .Y(_029_));
 sky130_fd_sc_hd__a21oi_1 _174_ (.A1(_024_),
    .A2(_027_),
    .B1(_029_),
    .Y(_011_));
 sky130_fd_sc_hd__a21o_1 _175_ (.A1(_072_),
    .A2(_050_),
    .B1(_028_),
    .X(_030_));
 sky130_fd_sc_hd__nand3_1 _176_ (.A(_093_),
    .B(_026_),
    .C(\cnt2[0] ),
    .Y(_031_));
 sky130_fd_sc_hd__inv_2 _177_ (.A(net2),
    .Y(_032_));
 sky130_fd_sc_hd__or3_1 _178_ (.A(_099_),
    .B(\cnt2[1] ),
    .C(_032_),
    .X(_033_));
 sky130_fd_sc_hd__o2bb2ai_1 _179_ (.A1_N(\cnt2[1] ),
    .A2_N(_030_),
    .B1(_031_),
    .B2(_033_),
    .Y(_012_));
 sky130_fd_sc_hd__inv_2 _180_ (.A(\cnt3[0] ),
    .Y(_034_));
 sky130_fd_sc_hd__a211oi_1 _181_ (.A1(_050_),
    .A2(_064_),
    .B1(_073_),
    .C1(_055_),
    .Y(_035_));
 sky130_fd_sc_hd__nor2_1 _182_ (.A(_099_),
    .B(_055_),
    .Y(_036_));
 sky130_fd_sc_hd__o2111ai_1 _183_ (.A1(_055_),
    .A2(_054_),
    .B1(_036_),
    .C1(_034_),
    .D1(_065_),
    .Y(_037_));
 sky130_fd_sc_hd__o21ai_1 _184_ (.A1(_034_),
    .A2(_035_),
    .B1(_037_),
    .Y(_013_));
 sky130_fd_sc_hd__inv_2 _185_ (.A(\cnt3[1] ),
    .Y(_038_));
 sky130_fd_sc_hd__or2_1 _186_ (.A(\cnt3[0] ),
    .B(\cnt3[1] ),
    .X(_039_));
 sky130_fd_sc_hd__nand2_1 _187_ (.A(\cnt3[0] ),
    .B(\cnt3[1] ),
    .Y(_040_));
 sky130_fd_sc_hd__and4_1 _188_ (.A(_090_),
    .B(_039_),
    .C(_091_),
    .D(_040_),
    .X(_041_));
 sky130_fd_sc_hd__o2111ai_1 _189_ (.A1(_099_),
    .A2(_051_),
    .B1(_032_),
    .C1(_065_),
    .D1(_041_),
    .Y(_042_));
 sky130_fd_sc_hd__o21ai_1 _190_ (.A1(_038_),
    .A2(_035_),
    .B1(_042_),
    .Y(_014_));
 sky130_fd_sc_hd__o211ai_1 _191_ (.A1(_099_),
    .A2(_051_),
    .B1(_032_),
    .C1(_065_),
    .Y(_043_));
 sky130_fd_sc_hd__nor2_1 _192_ (.A(\cnt3[2] ),
    .B(_040_),
    .Y(_044_));
 sky130_fd_sc_hd__and2_1 _193_ (.A(_040_),
    .B(\cnt3[2] ),
    .X(_045_));
 sky130_fd_sc_hd__o2111ai_1 _194_ (.A1(_044_),
    .A2(_045_),
    .B1(_051_),
    .C1(_036_),
    .D1(_090_),
    .Y(_046_));
 sky130_fd_sc_hd__o2bb2ai_1 _195_ (.A1_N(\cnt3[2] ),
    .A2_N(_043_),
    .B1(_046_),
    .B2(_074_),
    .Y(_015_));
 sky130_fd_sc_hd__and2b_1 _196_ (.A_N(\cnt1[1] ),
    .B(\cnt1[0] ),
    .X(_047_));
 sky130_fd_sc_hd__inv_2 _197_ (.A(\cnt1[4] ),
    .Y(_048_));
 sky130_fd_sc_hd__nor2_1 _198_ (.A(\cnt1[3] ),
    .B(\cnt1[2] ),
    .Y(_049_));
 sky130_fd_sc_hd__nand4_4 _199_ (.A(_047_),
    .B(_048_),
    .C(\cnt1[5] ),
    .D(_049_),
    .Y(_050_));
 sky130_fd_sc_hd__clkbuf_2 _200_ (.A(net3),
    .X(_051_));
 sky130_fd_sc_hd__nand3b_1 _201_ (.A_N(net1),
    .B(_051_),
    .C(net2),
    .Y(_052_));
 sky130_fd_sc_hd__nor2_1 _202_ (.A(_050_),
    .B(_052_),
    .Y(_053_));
 sky130_fd_sc_hd__or2_1 _203_ (.A(net1),
    .B(_051_),
    .X(_054_));
 sky130_fd_sc_hd__buf_2 _204_ (.A(net2),
    .X(_055_));
 sky130_fd_sc_hd__or2_1 _205_ (.A(_051_),
    .B(net2),
    .X(_056_));
 sky130_fd_sc_hd__dfxtp_2 _206_ (.CLK(clk),
    .D(_000_),
    .Q(\cnt4[0] ));
 sky130_fd_sc_hd__dfxtp_2 _207_ (.CLK(clk),
    .D(_001_),
    .Q(\cnt4[1] ));
 sky130_fd_sc_hd__dfxtp_1 _208_ (.CLK(clk),
    .D(_002_),
    .Q(\cnt4[2] ));
 sky130_fd_sc_hd__dfxtp_1 _209_ (.CLK(clk),
    .D(_003_),
    .Q(\cnt4[3] ));
 sky130_fd_sc_hd__dfxtp_1 _210_ (.CLK(clk),
    .D(_004_),
    .Q(net4));
 sky130_fd_sc_hd__dfxtp_1 _211_ (.CLK(clk),
    .D(_005_),
    .Q(\cnt1[0] ));
 sky130_fd_sc_hd__dfxtp_1 _212_ (.CLK(clk),
    .D(_006_),
    .Q(\cnt1[1] ));
 sky130_fd_sc_hd__dfxtp_1 _213_ (.CLK(clk),
    .D(_007_),
    .Q(\cnt1[2] ));
 sky130_fd_sc_hd__dfxtp_1 _214_ (.CLK(clk),
    .D(_008_),
    .Q(\cnt1[3] ));
 sky130_fd_sc_hd__dfxtp_1 _215_ (.CLK(clk),
    .D(_009_),
    .Q(\cnt1[4] ));
 sky130_fd_sc_hd__dfxtp_1 _216_ (.CLK(clk),
    .D(_010_),
    .Q(\cnt1[5] ));
 sky130_fd_sc_hd__dfxtp_1 _217_ (.CLK(clk),
    .D(_011_),
    .Q(\cnt2[0] ));
 sky130_fd_sc_hd__dfxtp_1 _218_ (.CLK(clk),
    .D(_012_),
    .Q(\cnt2[1] ));
 sky130_fd_sc_hd__dfxtp_1 _219_ (.CLK(clk),
    .D(_013_),
    .Q(\cnt3[0] ));
 sky130_fd_sc_hd__dfxtp_1 _220_ (.CLK(clk),
    .D(_014_),
    .Q(\cnt3[1] ));
 sky130_fd_sc_hd__dfxtp_1 _221_ (.CLK(clk),
    .D(_015_),
    .Q(\cnt3[2] ));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_0_Right_0 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_1_Right_1 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_2_Right_2 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_3_Right_3 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_4_Right_4 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_5_Right_5 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_6_Right_6 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_7_Right_7 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_8_Right_8 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_9_Right_9 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_10_Right_10 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_11_Right_11 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_12_Right_12 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_13_Right_13 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_14_Right_14 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_0_Left_15 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_1_Left_16 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_2_Left_17 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_3_Left_18 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_4_Left_19 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_5_Left_20 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_6_Left_21 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_7_Left_22 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_8_Left_23 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_9_Left_24 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_10_Left_25 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_11_Left_26 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_12_Left_27 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_13_Left_28 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_14_Left_29 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_30 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_31 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_32 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_33 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_34 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_35 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_36 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_37 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_38 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_39 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_40 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_41 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_42 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_43 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_44 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_45 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_46 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_47 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_48 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_49 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_50 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_51 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_52 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_53 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_54 ();
 sky130_fd_sc_hd__clkbuf_2 input1 (.A(reset),
    .X(net1));
 sky130_fd_sc_hd__clkbuf_2 input2 (.A(sel[0]),
    .X(net2));
 sky130_fd_sc_hd__buf_1 input3 (.A(sel[1]),
    .X(net3));
 sky130_fd_sc_hd__clkbuf_4 output4 (.A(net4),
    .X(clkout));
endmodule
