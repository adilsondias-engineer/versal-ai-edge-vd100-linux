--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
--Date        : Sat Mar 14 22:05:01 2026
--Host        : Mercury running 64-bit major release  (build 9200)
--Command     : generate_target design_1.bd
--Design      : design_1
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1 is
  port (
    DDR4_act_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    DDR4_adr : out STD_LOGIC_VECTOR ( 16 downto 0 );
    DDR4_ba : out STD_LOGIC_VECTOR ( 1 downto 0 );
    DDR4_bg : out STD_LOGIC_VECTOR ( 0 to 0 );
    DDR4_ck_c : out STD_LOGIC_VECTOR ( 0 to 0 );
    DDR4_ck_t : out STD_LOGIC_VECTOR ( 0 to 0 );
    DDR4_cke : out STD_LOGIC_VECTOR ( 0 to 0 );
    DDR4_cs_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    DDR4_dm_n : inout STD_LOGIC_VECTOR ( 7 downto 0 );
    DDR4_dq : inout STD_LOGIC_VECTOR ( 63 downto 0 );
    DDR4_dqs_c : inout STD_LOGIC_VECTOR ( 7 downto 0 );
    DDR4_dqs_t : inout STD_LOGIC_VECTOR ( 7 downto 0 );
    DDR4_odt : out STD_LOGIC_VECTOR ( 0 to 0 );
    DDR4_reset_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    sys_clk_clk_n : in STD_LOGIC_VECTOR ( 0 to 0 );
    sys_clk_clk_p : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_1 : entity is "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=2,numReposBlks=2,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_board_cnt=1,da_cips_cnt=2,synth_mode=Hierarchical}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of design_1 : entity is "design_1.hwdef";
end design_1;

architecture STRUCTURE of design_1 is
  component design_1_versal_cips_0_0 is
  port (
    pl0_ref_clk : out STD_LOGIC;
    pl0_resetn : out STD_LOGIC;
    fpd_cci_noc_axi0_clk : out STD_LOGIC;
    fpd_cci_noc_axi1_clk : out STD_LOGIC;
    fpd_cci_noc_axi2_clk : out STD_LOGIC;
    fpd_cci_noc_axi3_clk : out STD_LOGIC;
    lpd_axi_noc_clk : out STD_LOGIC;
    pmc_axi_noc_axi0_clk : out STD_LOGIC;
    gem0_tsu_timer_cnt : out STD_LOGIC_VECTOR ( 93 downto 0 );
    FPD_CCI_NOC_0_awid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    FPD_CCI_NOC_0_awaddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    FPD_CCI_NOC_0_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    FPD_CCI_NOC_0_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    FPD_CCI_NOC_0_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    FPD_CCI_NOC_0_awlock : out STD_LOGIC;
    FPD_CCI_NOC_0_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    FPD_CCI_NOC_0_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    FPD_CCI_NOC_0_awvalid : out STD_LOGIC;
    FPD_CCI_NOC_0_awuser : out STD_LOGIC_VECTOR ( 17 downto 0 );
    FPD_CCI_NOC_0_awready : in STD_LOGIC;
    FPD_CCI_NOC_0_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    FPD_CCI_NOC_0_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    FPD_CCI_NOC_0_wuser : out STD_LOGIC_VECTOR ( 16 downto 0 );
    FPD_CCI_NOC_0_wlast : out STD_LOGIC;
    FPD_CCI_NOC_0_wvalid : out STD_LOGIC;
    FPD_CCI_NOC_0_wready : in STD_LOGIC;
    FPD_CCI_NOC_0_bid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    FPD_CCI_NOC_0_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    FPD_CCI_NOC_0_bvalid : in STD_LOGIC;
    FPD_CCI_NOC_0_bready : out STD_LOGIC;
    FPD_CCI_NOC_0_arid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    FPD_CCI_NOC_0_araddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    FPD_CCI_NOC_0_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    FPD_CCI_NOC_0_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    FPD_CCI_NOC_0_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    FPD_CCI_NOC_0_arlock : out STD_LOGIC;
    FPD_CCI_NOC_0_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    FPD_CCI_NOC_0_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    FPD_CCI_NOC_0_arvalid : out STD_LOGIC;
    FPD_CCI_NOC_0_aruser : out STD_LOGIC_VECTOR ( 17 downto 0 );
    FPD_CCI_NOC_0_arready : in STD_LOGIC;
    FPD_CCI_NOC_0_rid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    FPD_CCI_NOC_0_rdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    FPD_CCI_NOC_0_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    FPD_CCI_NOC_0_rlast : in STD_LOGIC;
    FPD_CCI_NOC_0_rvalid : in STD_LOGIC;
    FPD_CCI_NOC_0_rready : out STD_LOGIC;
    FPD_CCI_NOC_0_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    FPD_CCI_NOC_0_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    FPD_CCI_NOC_1_awid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    FPD_CCI_NOC_1_awaddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    FPD_CCI_NOC_1_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    FPD_CCI_NOC_1_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    FPD_CCI_NOC_1_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    FPD_CCI_NOC_1_awlock : out STD_LOGIC;
    FPD_CCI_NOC_1_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    FPD_CCI_NOC_1_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    FPD_CCI_NOC_1_awvalid : out STD_LOGIC;
    FPD_CCI_NOC_1_awuser : out STD_LOGIC_VECTOR ( 17 downto 0 );
    FPD_CCI_NOC_1_awready : in STD_LOGIC;
    FPD_CCI_NOC_1_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    FPD_CCI_NOC_1_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    FPD_CCI_NOC_1_wuser : out STD_LOGIC_VECTOR ( 16 downto 0 );
    FPD_CCI_NOC_1_wlast : out STD_LOGIC;
    FPD_CCI_NOC_1_wvalid : out STD_LOGIC;
    FPD_CCI_NOC_1_wready : in STD_LOGIC;
    FPD_CCI_NOC_1_bid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    FPD_CCI_NOC_1_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    FPD_CCI_NOC_1_bvalid : in STD_LOGIC;
    FPD_CCI_NOC_1_bready : out STD_LOGIC;
    FPD_CCI_NOC_1_arid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    FPD_CCI_NOC_1_araddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    FPD_CCI_NOC_1_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    FPD_CCI_NOC_1_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    FPD_CCI_NOC_1_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    FPD_CCI_NOC_1_arlock : out STD_LOGIC;
    FPD_CCI_NOC_1_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    FPD_CCI_NOC_1_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    FPD_CCI_NOC_1_arvalid : out STD_LOGIC;
    FPD_CCI_NOC_1_aruser : out STD_LOGIC_VECTOR ( 17 downto 0 );
    FPD_CCI_NOC_1_arready : in STD_LOGIC;
    FPD_CCI_NOC_1_rid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    FPD_CCI_NOC_1_rdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    FPD_CCI_NOC_1_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    FPD_CCI_NOC_1_rlast : in STD_LOGIC;
    FPD_CCI_NOC_1_rvalid : in STD_LOGIC;
    FPD_CCI_NOC_1_rready : out STD_LOGIC;
    FPD_CCI_NOC_1_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    FPD_CCI_NOC_1_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    FPD_CCI_NOC_2_awid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    FPD_CCI_NOC_2_awaddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    FPD_CCI_NOC_2_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    FPD_CCI_NOC_2_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    FPD_CCI_NOC_2_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    FPD_CCI_NOC_2_awlock : out STD_LOGIC;
    FPD_CCI_NOC_2_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    FPD_CCI_NOC_2_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    FPD_CCI_NOC_2_awvalid : out STD_LOGIC;
    FPD_CCI_NOC_2_awuser : out STD_LOGIC_VECTOR ( 17 downto 0 );
    FPD_CCI_NOC_2_awready : in STD_LOGIC;
    FPD_CCI_NOC_2_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    FPD_CCI_NOC_2_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    FPD_CCI_NOC_2_wuser : out STD_LOGIC_VECTOR ( 16 downto 0 );
    FPD_CCI_NOC_2_wlast : out STD_LOGIC;
    FPD_CCI_NOC_2_wvalid : out STD_LOGIC;
    FPD_CCI_NOC_2_wready : in STD_LOGIC;
    FPD_CCI_NOC_2_bid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    FPD_CCI_NOC_2_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    FPD_CCI_NOC_2_bvalid : in STD_LOGIC;
    FPD_CCI_NOC_2_bready : out STD_LOGIC;
    FPD_CCI_NOC_2_arid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    FPD_CCI_NOC_2_araddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    FPD_CCI_NOC_2_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    FPD_CCI_NOC_2_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    FPD_CCI_NOC_2_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    FPD_CCI_NOC_2_arlock : out STD_LOGIC;
    FPD_CCI_NOC_2_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    FPD_CCI_NOC_2_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    FPD_CCI_NOC_2_arvalid : out STD_LOGIC;
    FPD_CCI_NOC_2_aruser : out STD_LOGIC_VECTOR ( 17 downto 0 );
    FPD_CCI_NOC_2_arready : in STD_LOGIC;
    FPD_CCI_NOC_2_rid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    FPD_CCI_NOC_2_rdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    FPD_CCI_NOC_2_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    FPD_CCI_NOC_2_rlast : in STD_LOGIC;
    FPD_CCI_NOC_2_rvalid : in STD_LOGIC;
    FPD_CCI_NOC_2_rready : out STD_LOGIC;
    FPD_CCI_NOC_2_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    FPD_CCI_NOC_2_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    FPD_CCI_NOC_3_awid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    FPD_CCI_NOC_3_awaddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    FPD_CCI_NOC_3_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    FPD_CCI_NOC_3_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    FPD_CCI_NOC_3_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    FPD_CCI_NOC_3_awlock : out STD_LOGIC;
    FPD_CCI_NOC_3_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    FPD_CCI_NOC_3_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    FPD_CCI_NOC_3_awvalid : out STD_LOGIC;
    FPD_CCI_NOC_3_awuser : out STD_LOGIC_VECTOR ( 17 downto 0 );
    FPD_CCI_NOC_3_awready : in STD_LOGIC;
    FPD_CCI_NOC_3_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    FPD_CCI_NOC_3_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    FPD_CCI_NOC_3_wuser : out STD_LOGIC_VECTOR ( 16 downto 0 );
    FPD_CCI_NOC_3_wlast : out STD_LOGIC;
    FPD_CCI_NOC_3_wvalid : out STD_LOGIC;
    FPD_CCI_NOC_3_wready : in STD_LOGIC;
    FPD_CCI_NOC_3_bid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    FPD_CCI_NOC_3_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    FPD_CCI_NOC_3_bvalid : in STD_LOGIC;
    FPD_CCI_NOC_3_bready : out STD_LOGIC;
    FPD_CCI_NOC_3_arid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    FPD_CCI_NOC_3_araddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    FPD_CCI_NOC_3_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    FPD_CCI_NOC_3_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    FPD_CCI_NOC_3_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    FPD_CCI_NOC_3_arlock : out STD_LOGIC;
    FPD_CCI_NOC_3_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    FPD_CCI_NOC_3_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    FPD_CCI_NOC_3_arvalid : out STD_LOGIC;
    FPD_CCI_NOC_3_aruser : out STD_LOGIC_VECTOR ( 17 downto 0 );
    FPD_CCI_NOC_3_arready : in STD_LOGIC;
    FPD_CCI_NOC_3_rid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    FPD_CCI_NOC_3_rdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    FPD_CCI_NOC_3_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    FPD_CCI_NOC_3_rlast : in STD_LOGIC;
    FPD_CCI_NOC_3_rvalid : in STD_LOGIC;
    FPD_CCI_NOC_3_rready : out STD_LOGIC;
    FPD_CCI_NOC_3_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    FPD_CCI_NOC_3_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    LPD_AXI_NOC_0_awid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    LPD_AXI_NOC_0_awaddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    LPD_AXI_NOC_0_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    LPD_AXI_NOC_0_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    LPD_AXI_NOC_0_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    LPD_AXI_NOC_0_awlock : out STD_LOGIC;
    LPD_AXI_NOC_0_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    LPD_AXI_NOC_0_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    LPD_AXI_NOC_0_awvalid : out STD_LOGIC;
    LPD_AXI_NOC_0_awuser : out STD_LOGIC_VECTOR ( 17 downto 0 );
    LPD_AXI_NOC_0_awready : in STD_LOGIC;
    LPD_AXI_NOC_0_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    LPD_AXI_NOC_0_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    LPD_AXI_NOC_0_wlast : out STD_LOGIC;
    LPD_AXI_NOC_0_wvalid : out STD_LOGIC;
    LPD_AXI_NOC_0_wready : in STD_LOGIC;
    LPD_AXI_NOC_0_bid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    LPD_AXI_NOC_0_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    LPD_AXI_NOC_0_bvalid : in STD_LOGIC;
    LPD_AXI_NOC_0_bready : out STD_LOGIC;
    LPD_AXI_NOC_0_arid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    LPD_AXI_NOC_0_araddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    LPD_AXI_NOC_0_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    LPD_AXI_NOC_0_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    LPD_AXI_NOC_0_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    LPD_AXI_NOC_0_arlock : out STD_LOGIC;
    LPD_AXI_NOC_0_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    LPD_AXI_NOC_0_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    LPD_AXI_NOC_0_arvalid : out STD_LOGIC;
    LPD_AXI_NOC_0_aruser : out STD_LOGIC_VECTOR ( 17 downto 0 );
    LPD_AXI_NOC_0_arready : in STD_LOGIC;
    LPD_AXI_NOC_0_rid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    LPD_AXI_NOC_0_rdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    LPD_AXI_NOC_0_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    LPD_AXI_NOC_0_rlast : in STD_LOGIC;
    LPD_AXI_NOC_0_rvalid : in STD_LOGIC;
    LPD_AXI_NOC_0_rready : out STD_LOGIC;
    LPD_AXI_NOC_0_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    LPD_AXI_NOC_0_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    PMC_NOC_AXI_0_araddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    PMC_NOC_AXI_0_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PMC_NOC_AXI_0_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    PMC_NOC_AXI_0_arid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    PMC_NOC_AXI_0_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    PMC_NOC_AXI_0_arlock : out STD_LOGIC;
    PMC_NOC_AXI_0_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    PMC_NOC_AXI_0_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    PMC_NOC_AXI_0_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    PMC_NOC_AXI_0_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    PMC_NOC_AXI_0_aruser : out STD_LOGIC_VECTOR ( 17 downto 0 );
    PMC_NOC_AXI_0_arvalid : out STD_LOGIC;
    PMC_NOC_AXI_0_awaddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    PMC_NOC_AXI_0_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    PMC_NOC_AXI_0_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    PMC_NOC_AXI_0_awid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    PMC_NOC_AXI_0_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    PMC_NOC_AXI_0_awlock : out STD_LOGIC;
    PMC_NOC_AXI_0_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    PMC_NOC_AXI_0_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    PMC_NOC_AXI_0_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    PMC_NOC_AXI_0_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    PMC_NOC_AXI_0_awuser : out STD_LOGIC_VECTOR ( 17 downto 0 );
    PMC_NOC_AXI_0_awvalid : out STD_LOGIC;
    PMC_NOC_AXI_0_bready : out STD_LOGIC;
    PMC_NOC_AXI_0_rready : out STD_LOGIC;
    PMC_NOC_AXI_0_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    PMC_NOC_AXI_0_wid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    PMC_NOC_AXI_0_wlast : out STD_LOGIC;
    PMC_NOC_AXI_0_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    PMC_NOC_AXI_0_wuser : out STD_LOGIC_VECTOR ( 16 downto 0 );
    PMC_NOC_AXI_0_wvalid : out STD_LOGIC;
    PMC_NOC_AXI_0_arready : in STD_LOGIC;
    PMC_NOC_AXI_0_awready : in STD_LOGIC;
    PMC_NOC_AXI_0_bid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    PMC_NOC_AXI_0_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    PMC_NOC_AXI_0_buser : in STD_LOGIC_VECTOR ( 15 downto 0 );
    PMC_NOC_AXI_0_bvalid : in STD_LOGIC;
    PMC_NOC_AXI_0_rdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    PMC_NOC_AXI_0_rid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    PMC_NOC_AXI_0_rlast : in STD_LOGIC;
    PMC_NOC_AXI_0_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    PMC_NOC_AXI_0_ruser : in STD_LOGIC_VECTOR ( 16 downto 0 );
    PMC_NOC_AXI_0_rvalid : in STD_LOGIC;
    PMC_NOC_AXI_0_wready : in STD_LOGIC;
    LPD_GPIO_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    LPD_GPIO_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    LPD_GPIO_t : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component design_1_versal_cips_0_0;
  component design_1_axi_noc_0_0 is
  port (
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S00_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S00_AXI_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S00_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_awaddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S01_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S01_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    S01_AXI_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S01_AXI_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_araddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S01_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S01_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    S01_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_rlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXI_awaddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S02_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S02_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S02_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S02_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S02_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXI_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    S02_AXI_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S02_AXI_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S02_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXI_araddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S02_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S02_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S02_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S02_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S02_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXI_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    S02_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S02_AXI_rlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S03_AXI_awaddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S03_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S03_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S03_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S03_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S03_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S03_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S03_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S03_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S03_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S03_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S03_AXI_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    S03_AXI_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S03_AXI_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    S03_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S03_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S03_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S03_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S03_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S03_AXI_araddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S03_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S03_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S03_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S03_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S03_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S03_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S03_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S03_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S03_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S03_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S03_AXI_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    S03_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S03_AXI_rlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    S03_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S03_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S04_AXI_awaddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S04_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S04_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S04_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S04_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S04_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S04_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S04_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S04_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S04_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S04_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S04_AXI_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    S04_AXI_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S04_AXI_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    S04_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S04_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S04_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S04_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S04_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S04_AXI_araddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S04_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S04_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S04_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S04_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S04_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S04_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S04_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S04_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S04_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S04_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S04_AXI_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    S04_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S04_AXI_rlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    S04_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S04_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S05_AXI_awaddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S05_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S05_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S05_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S05_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S05_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S05_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S05_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S05_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S05_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S05_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S05_AXI_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    S05_AXI_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S05_AXI_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    S05_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S05_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S05_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S05_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S05_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S05_AXI_araddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S05_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S05_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S05_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S05_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S05_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S05_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S05_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S05_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S05_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S05_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S05_AXI_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    S05_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S05_AXI_rlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    S05_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S05_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclk0 : in STD_LOGIC;
    aclk1 : in STD_LOGIC;
    aclk2 : in STD_LOGIC;
    aclk3 : in STD_LOGIC;
    aclk4 : in STD_LOGIC;
    aclk5 : in STD_LOGIC;
    sys_clk0_clk_p : in STD_LOGIC_VECTOR ( 0 to 0 );
    sys_clk0_clk_n : in STD_LOGIC_VECTOR ( 0 to 0 );
    CH0_DDR4_0_dq : inout STD_LOGIC_VECTOR ( 63 downto 0 );
    CH0_DDR4_0_dqs_t : inout STD_LOGIC_VECTOR ( 7 downto 0 );
    CH0_DDR4_0_dqs_c : inout STD_LOGIC_VECTOR ( 7 downto 0 );
    CH0_DDR4_0_adr : out STD_LOGIC_VECTOR ( 16 downto 0 );
    CH0_DDR4_0_ba : out STD_LOGIC_VECTOR ( 1 downto 0 );
    CH0_DDR4_0_bg : out STD_LOGIC_VECTOR ( 0 to 0 );
    CH0_DDR4_0_act_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    CH0_DDR4_0_reset_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    CH0_DDR4_0_ck_t : out STD_LOGIC_VECTOR ( 0 to 0 );
    CH0_DDR4_0_ck_c : out STD_LOGIC_VECTOR ( 0 to 0 );
    CH0_DDR4_0_cke : out STD_LOGIC_VECTOR ( 0 to 0 );
    CH0_DDR4_0_cs_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    CH0_DDR4_0_dm_n : inout STD_LOGIC_VECTOR ( 7 downto 0 );
    CH0_DDR4_0_odt : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_arid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S00_AXI_aruser : in STD_LOGIC_VECTOR ( 17 downto 0 );
    S00_AXI_awid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S00_AXI_awuser : in STD_LOGIC_VECTOR ( 17 downto 0 );
    S00_AXI_bid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    S00_AXI_rid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    S00_AXI_ruser : out STD_LOGIC_VECTOR ( 16 downto 0 );
    S00_AXI_wuser : in STD_LOGIC_VECTOR ( 16 downto 0 );
    S01_AXI_arid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S01_AXI_aruser : in STD_LOGIC_VECTOR ( 17 downto 0 );
    S01_AXI_awid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S01_AXI_awuser : in STD_LOGIC_VECTOR ( 17 downto 0 );
    S01_AXI_bid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    S01_AXI_rid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    S01_AXI_ruser : out STD_LOGIC_VECTOR ( 16 downto 0 );
    S01_AXI_wuser : in STD_LOGIC_VECTOR ( 16 downto 0 );
    S02_AXI_arid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S02_AXI_aruser : in STD_LOGIC_VECTOR ( 17 downto 0 );
    S02_AXI_awid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S02_AXI_awuser : in STD_LOGIC_VECTOR ( 17 downto 0 );
    S02_AXI_bid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    S02_AXI_rid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    S02_AXI_ruser : out STD_LOGIC_VECTOR ( 16 downto 0 );
    S02_AXI_wuser : in STD_LOGIC_VECTOR ( 16 downto 0 );
    S03_AXI_arid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S03_AXI_aruser : in STD_LOGIC_VECTOR ( 17 downto 0 );
    S03_AXI_awid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S03_AXI_awuser : in STD_LOGIC_VECTOR ( 17 downto 0 );
    S03_AXI_bid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    S03_AXI_rid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    S03_AXI_ruser : out STD_LOGIC_VECTOR ( 16 downto 0 );
    S03_AXI_wuser : in STD_LOGIC_VECTOR ( 16 downto 0 );
    S04_AXI_arid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S04_AXI_aruser : in STD_LOGIC_VECTOR ( 17 downto 0 );
    S04_AXI_awid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S04_AXI_awuser : in STD_LOGIC_VECTOR ( 17 downto 0 );
    S04_AXI_bid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    S04_AXI_rid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    S04_AXI_ruser : out STD_LOGIC_VECTOR ( 16 downto 0 );
    S04_AXI_wuser : in STD_LOGIC_VECTOR ( 16 downto 0 );
    S05_AXI_arid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S05_AXI_aruser : in STD_LOGIC_VECTOR ( 17 downto 0 );
    S05_AXI_awid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S05_AXI_awuser : in STD_LOGIC_VECTOR ( 17 downto 0 );
    S05_AXI_bid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    S05_AXI_buser : out STD_LOGIC_VECTOR ( 15 downto 0 );
    S05_AXI_rid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    S05_AXI_ruser : out STD_LOGIC_VECTOR ( 16 downto 0 );
    S05_AXI_wuser : in STD_LOGIC_VECTOR ( 16 downto 0 )
  );
  end component design_1_axi_noc_0_0;
  signal versal_cips_0_FPD_CCI_NOC_0_ARADDR : STD_LOGIC_VECTOR ( 63 downto 0 );
  attribute HARD_CONN : string;
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_0_ARADDR : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_0_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_0_ARBURST : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_0_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_0_ARCACHE : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_0_ARID : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_0_ARID : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_0_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_0_ARLEN : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_0_ARLOCK : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_0_ARLOCK : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_0_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_0_ARPROT : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_0_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_0_ARQOS : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_0_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_0_ARREADY : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_0_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_0_ARSIZE : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_0_ARUSER : STD_LOGIC_VECTOR ( 17 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_0_ARUSER : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_0_ARVALID : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_0_ARVALID : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_0_AWADDR : STD_LOGIC_VECTOR ( 63 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_0_AWADDR : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_0_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_0_AWBURST : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_0_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_0_AWCACHE : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_0_AWID : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_0_AWID : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_0_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_0_AWLEN : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_0_AWLOCK : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_0_AWLOCK : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_0_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_0_AWPROT : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_0_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_0_AWQOS : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_0_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_0_AWREADY : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_0_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_0_AWSIZE : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_0_AWUSER : STD_LOGIC_VECTOR ( 17 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_0_AWUSER : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_0_AWVALID : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_0_AWVALID : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_0_BID : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_0_BID : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_0_BREADY : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_0_BREADY : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_0_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_0_BRESP : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_0_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_0_BVALID : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_0_RDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_0_RDATA : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_0_RID : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_0_RID : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_0_RLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_0_RLAST : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_0_RREADY : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_0_RREADY : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_0_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_0_RRESP : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_0_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_0_RVALID : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_0_WDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_0_WDATA : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_0_WLAST : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_0_WLAST : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_0_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_0_WREADY : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_0_WSTRB : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_0_WSTRB : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_0_WUSER : STD_LOGIC_VECTOR ( 16 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_0_WUSER : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_0_WVALID : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_0_WVALID : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_1_ARADDR : STD_LOGIC_VECTOR ( 63 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_1_ARADDR : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_1_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_1_ARBURST : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_1_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_1_ARCACHE : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_1_ARID : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_1_ARID : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_1_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_1_ARLEN : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_1_ARLOCK : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_1_ARLOCK : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_1_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_1_ARPROT : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_1_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_1_ARQOS : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_1_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_1_ARREADY : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_1_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_1_ARSIZE : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_1_ARUSER : STD_LOGIC_VECTOR ( 17 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_1_ARUSER : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_1_ARVALID : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_1_ARVALID : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_1_AWADDR : STD_LOGIC_VECTOR ( 63 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_1_AWADDR : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_1_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_1_AWBURST : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_1_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_1_AWCACHE : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_1_AWID : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_1_AWID : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_1_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_1_AWLEN : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_1_AWLOCK : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_1_AWLOCK : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_1_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_1_AWPROT : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_1_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_1_AWQOS : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_1_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_1_AWREADY : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_1_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_1_AWSIZE : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_1_AWUSER : STD_LOGIC_VECTOR ( 17 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_1_AWUSER : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_1_AWVALID : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_1_AWVALID : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_1_BID : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_1_BID : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_1_BREADY : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_1_BREADY : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_1_BRESP : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_1_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_1_BVALID : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_1_RDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_1_RDATA : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_1_RID : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_1_RID : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_1_RLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_1_RLAST : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_1_RREADY : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_1_RREADY : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_1_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_1_RRESP : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_1_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_1_RVALID : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_1_WDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_1_WDATA : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_1_WLAST : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_1_WLAST : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_1_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_1_WREADY : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_1_WSTRB : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_1_WSTRB : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_1_WUSER : STD_LOGIC_VECTOR ( 16 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_1_WUSER : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_1_WVALID : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_1_WVALID : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_2_ARADDR : STD_LOGIC_VECTOR ( 63 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_2_ARADDR : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_2_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_2_ARBURST : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_2_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_2_ARCACHE : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_2_ARID : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_2_ARID : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_2_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_2_ARLEN : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_2_ARLOCK : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_2_ARLOCK : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_2_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_2_ARPROT : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_2_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_2_ARQOS : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_2_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_2_ARREADY : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_2_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_2_ARSIZE : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_2_ARUSER : STD_LOGIC_VECTOR ( 17 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_2_ARUSER : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_2_ARVALID : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_2_ARVALID : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_2_AWADDR : STD_LOGIC_VECTOR ( 63 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_2_AWADDR : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_2_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_2_AWBURST : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_2_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_2_AWCACHE : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_2_AWID : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_2_AWID : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_2_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_2_AWLEN : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_2_AWLOCK : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_2_AWLOCK : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_2_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_2_AWPROT : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_2_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_2_AWQOS : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_2_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_2_AWREADY : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_2_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_2_AWSIZE : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_2_AWUSER : STD_LOGIC_VECTOR ( 17 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_2_AWUSER : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_2_AWVALID : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_2_AWVALID : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_2_BID : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_2_BID : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_2_BREADY : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_2_BREADY : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_2_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_2_BRESP : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_2_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_2_BVALID : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_2_RDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_2_RDATA : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_2_RID : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_2_RID : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_2_RLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_2_RLAST : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_2_RREADY : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_2_RREADY : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_2_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_2_RRESP : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_2_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_2_RVALID : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_2_WDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_2_WDATA : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_2_WLAST : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_2_WLAST : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_2_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_2_WREADY : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_2_WSTRB : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_2_WSTRB : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_2_WUSER : STD_LOGIC_VECTOR ( 16 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_2_WUSER : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_2_WVALID : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_2_WVALID : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_3_ARADDR : STD_LOGIC_VECTOR ( 63 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_3_ARADDR : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_3_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_3_ARBURST : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_3_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_3_ARCACHE : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_3_ARID : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_3_ARID : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_3_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_3_ARLEN : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_3_ARLOCK : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_3_ARLOCK : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_3_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_3_ARPROT : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_3_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_3_ARQOS : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_3_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_3_ARREADY : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_3_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_3_ARSIZE : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_3_ARUSER : STD_LOGIC_VECTOR ( 17 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_3_ARUSER : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_3_ARVALID : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_3_ARVALID : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_3_AWADDR : STD_LOGIC_VECTOR ( 63 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_3_AWADDR : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_3_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_3_AWBURST : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_3_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_3_AWCACHE : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_3_AWID : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_3_AWID : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_3_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_3_AWLEN : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_3_AWLOCK : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_3_AWLOCK : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_3_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_3_AWPROT : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_3_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_3_AWQOS : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_3_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_3_AWREADY : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_3_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_3_AWSIZE : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_3_AWUSER : STD_LOGIC_VECTOR ( 17 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_3_AWUSER : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_3_AWVALID : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_3_AWVALID : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_3_BID : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_3_BID : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_3_BREADY : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_3_BREADY : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_3_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_3_BRESP : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_3_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_3_BVALID : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_3_RDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_3_RDATA : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_3_RID : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_3_RID : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_3_RLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_3_RLAST : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_3_RREADY : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_3_RREADY : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_3_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_3_RRESP : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_3_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_3_RVALID : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_3_WDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_3_WDATA : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_3_WLAST : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_3_WLAST : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_3_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_3_WREADY : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_3_WSTRB : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_3_WSTRB : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_3_WUSER : STD_LOGIC_VECTOR ( 16 downto 0 );
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_3_WUSER : signal is "true";
  signal versal_cips_0_FPD_CCI_NOC_3_WVALID : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_FPD_CCI_NOC_3_WVALID : signal is "true";
  signal versal_cips_0_LPD_AXI_NOC_0_ARADDR : STD_LOGIC_VECTOR ( 63 downto 0 );
  attribute HARD_CONN of versal_cips_0_LPD_AXI_NOC_0_ARADDR : signal is "true";
  signal versal_cips_0_LPD_AXI_NOC_0_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute HARD_CONN of versal_cips_0_LPD_AXI_NOC_0_ARBURST : signal is "true";
  signal versal_cips_0_LPD_AXI_NOC_0_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute HARD_CONN of versal_cips_0_LPD_AXI_NOC_0_ARCACHE : signal is "true";
  signal versal_cips_0_LPD_AXI_NOC_0_ARID : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute HARD_CONN of versal_cips_0_LPD_AXI_NOC_0_ARID : signal is "true";
  signal versal_cips_0_LPD_AXI_NOC_0_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute HARD_CONN of versal_cips_0_LPD_AXI_NOC_0_ARLEN : signal is "true";
  signal versal_cips_0_LPD_AXI_NOC_0_ARLOCK : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_LPD_AXI_NOC_0_ARLOCK : signal is "true";
  signal versal_cips_0_LPD_AXI_NOC_0_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute HARD_CONN of versal_cips_0_LPD_AXI_NOC_0_ARPROT : signal is "true";
  signal versal_cips_0_LPD_AXI_NOC_0_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute HARD_CONN of versal_cips_0_LPD_AXI_NOC_0_ARQOS : signal is "true";
  signal versal_cips_0_LPD_AXI_NOC_0_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute HARD_CONN of versal_cips_0_LPD_AXI_NOC_0_ARREADY : signal is "true";
  signal versal_cips_0_LPD_AXI_NOC_0_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute HARD_CONN of versal_cips_0_LPD_AXI_NOC_0_ARSIZE : signal is "true";
  signal versal_cips_0_LPD_AXI_NOC_0_ARUSER : STD_LOGIC_VECTOR ( 17 downto 0 );
  attribute HARD_CONN of versal_cips_0_LPD_AXI_NOC_0_ARUSER : signal is "true";
  signal versal_cips_0_LPD_AXI_NOC_0_ARVALID : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_LPD_AXI_NOC_0_ARVALID : signal is "true";
  signal versal_cips_0_LPD_AXI_NOC_0_AWADDR : STD_LOGIC_VECTOR ( 63 downto 0 );
  attribute HARD_CONN of versal_cips_0_LPD_AXI_NOC_0_AWADDR : signal is "true";
  signal versal_cips_0_LPD_AXI_NOC_0_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute HARD_CONN of versal_cips_0_LPD_AXI_NOC_0_AWBURST : signal is "true";
  signal versal_cips_0_LPD_AXI_NOC_0_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute HARD_CONN of versal_cips_0_LPD_AXI_NOC_0_AWCACHE : signal is "true";
  signal versal_cips_0_LPD_AXI_NOC_0_AWID : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute HARD_CONN of versal_cips_0_LPD_AXI_NOC_0_AWID : signal is "true";
  signal versal_cips_0_LPD_AXI_NOC_0_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute HARD_CONN of versal_cips_0_LPD_AXI_NOC_0_AWLEN : signal is "true";
  signal versal_cips_0_LPD_AXI_NOC_0_AWLOCK : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_LPD_AXI_NOC_0_AWLOCK : signal is "true";
  signal versal_cips_0_LPD_AXI_NOC_0_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute HARD_CONN of versal_cips_0_LPD_AXI_NOC_0_AWPROT : signal is "true";
  signal versal_cips_0_LPD_AXI_NOC_0_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute HARD_CONN of versal_cips_0_LPD_AXI_NOC_0_AWQOS : signal is "true";
  signal versal_cips_0_LPD_AXI_NOC_0_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute HARD_CONN of versal_cips_0_LPD_AXI_NOC_0_AWREADY : signal is "true";
  signal versal_cips_0_LPD_AXI_NOC_0_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute HARD_CONN of versal_cips_0_LPD_AXI_NOC_0_AWSIZE : signal is "true";
  signal versal_cips_0_LPD_AXI_NOC_0_AWUSER : STD_LOGIC_VECTOR ( 17 downto 0 );
  attribute HARD_CONN of versal_cips_0_LPD_AXI_NOC_0_AWUSER : signal is "true";
  signal versal_cips_0_LPD_AXI_NOC_0_AWVALID : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_LPD_AXI_NOC_0_AWVALID : signal is "true";
  signal versal_cips_0_LPD_AXI_NOC_0_BID : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute HARD_CONN of versal_cips_0_LPD_AXI_NOC_0_BID : signal is "true";
  signal versal_cips_0_LPD_AXI_NOC_0_BREADY : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_LPD_AXI_NOC_0_BREADY : signal is "true";
  signal versal_cips_0_LPD_AXI_NOC_0_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute HARD_CONN of versal_cips_0_LPD_AXI_NOC_0_BRESP : signal is "true";
  signal versal_cips_0_LPD_AXI_NOC_0_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute HARD_CONN of versal_cips_0_LPD_AXI_NOC_0_BVALID : signal is "true";
  signal versal_cips_0_LPD_AXI_NOC_0_RDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  attribute HARD_CONN of versal_cips_0_LPD_AXI_NOC_0_RDATA : signal is "true";
  signal versal_cips_0_LPD_AXI_NOC_0_RID : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute HARD_CONN of versal_cips_0_LPD_AXI_NOC_0_RID : signal is "true";
  signal versal_cips_0_LPD_AXI_NOC_0_RLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute HARD_CONN of versal_cips_0_LPD_AXI_NOC_0_RLAST : signal is "true";
  signal versal_cips_0_LPD_AXI_NOC_0_RREADY : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_LPD_AXI_NOC_0_RREADY : signal is "true";
  signal versal_cips_0_LPD_AXI_NOC_0_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute HARD_CONN of versal_cips_0_LPD_AXI_NOC_0_RRESP : signal is "true";
  signal versal_cips_0_LPD_AXI_NOC_0_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute HARD_CONN of versal_cips_0_LPD_AXI_NOC_0_RVALID : signal is "true";
  signal versal_cips_0_LPD_AXI_NOC_0_WDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  attribute HARD_CONN of versal_cips_0_LPD_AXI_NOC_0_WDATA : signal is "true";
  signal versal_cips_0_LPD_AXI_NOC_0_WLAST : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_LPD_AXI_NOC_0_WLAST : signal is "true";
  signal versal_cips_0_LPD_AXI_NOC_0_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute HARD_CONN of versal_cips_0_LPD_AXI_NOC_0_WREADY : signal is "true";
  signal versal_cips_0_LPD_AXI_NOC_0_WSTRB : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute HARD_CONN of versal_cips_0_LPD_AXI_NOC_0_WSTRB : signal is "true";
  signal versal_cips_0_LPD_AXI_NOC_0_WVALID : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_LPD_AXI_NOC_0_WVALID : signal is "true";
  signal versal_cips_0_PMC_NOC_AXI_0_ARADDR : STD_LOGIC_VECTOR ( 63 downto 0 );
  attribute HARD_CONN of versal_cips_0_PMC_NOC_AXI_0_ARADDR : signal is "true";
  signal versal_cips_0_PMC_NOC_AXI_0_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute HARD_CONN of versal_cips_0_PMC_NOC_AXI_0_ARBURST : signal is "true";
  signal versal_cips_0_PMC_NOC_AXI_0_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute HARD_CONN of versal_cips_0_PMC_NOC_AXI_0_ARCACHE : signal is "true";
  signal versal_cips_0_PMC_NOC_AXI_0_ARID : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute HARD_CONN of versal_cips_0_PMC_NOC_AXI_0_ARID : signal is "true";
  signal versal_cips_0_PMC_NOC_AXI_0_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute HARD_CONN of versal_cips_0_PMC_NOC_AXI_0_ARLEN : signal is "true";
  signal versal_cips_0_PMC_NOC_AXI_0_ARLOCK : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_PMC_NOC_AXI_0_ARLOCK : signal is "true";
  signal versal_cips_0_PMC_NOC_AXI_0_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute HARD_CONN of versal_cips_0_PMC_NOC_AXI_0_ARPROT : signal is "true";
  signal versal_cips_0_PMC_NOC_AXI_0_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute HARD_CONN of versal_cips_0_PMC_NOC_AXI_0_ARQOS : signal is "true";
  signal versal_cips_0_PMC_NOC_AXI_0_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute HARD_CONN of versal_cips_0_PMC_NOC_AXI_0_ARREADY : signal is "true";
  signal versal_cips_0_PMC_NOC_AXI_0_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute HARD_CONN of versal_cips_0_PMC_NOC_AXI_0_ARREGION : signal is "true";
  signal versal_cips_0_PMC_NOC_AXI_0_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute HARD_CONN of versal_cips_0_PMC_NOC_AXI_0_ARSIZE : signal is "true";
  signal versal_cips_0_PMC_NOC_AXI_0_ARUSER : STD_LOGIC_VECTOR ( 17 downto 0 );
  attribute HARD_CONN of versal_cips_0_PMC_NOC_AXI_0_ARUSER : signal is "true";
  signal versal_cips_0_PMC_NOC_AXI_0_ARVALID : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_PMC_NOC_AXI_0_ARVALID : signal is "true";
  signal versal_cips_0_PMC_NOC_AXI_0_AWADDR : STD_LOGIC_VECTOR ( 63 downto 0 );
  attribute HARD_CONN of versal_cips_0_PMC_NOC_AXI_0_AWADDR : signal is "true";
  signal versal_cips_0_PMC_NOC_AXI_0_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute HARD_CONN of versal_cips_0_PMC_NOC_AXI_0_AWBURST : signal is "true";
  signal versal_cips_0_PMC_NOC_AXI_0_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute HARD_CONN of versal_cips_0_PMC_NOC_AXI_0_AWCACHE : signal is "true";
  signal versal_cips_0_PMC_NOC_AXI_0_AWID : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute HARD_CONN of versal_cips_0_PMC_NOC_AXI_0_AWID : signal is "true";
  signal versal_cips_0_PMC_NOC_AXI_0_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute HARD_CONN of versal_cips_0_PMC_NOC_AXI_0_AWLEN : signal is "true";
  signal versal_cips_0_PMC_NOC_AXI_0_AWLOCK : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_PMC_NOC_AXI_0_AWLOCK : signal is "true";
  signal versal_cips_0_PMC_NOC_AXI_0_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute HARD_CONN of versal_cips_0_PMC_NOC_AXI_0_AWPROT : signal is "true";
  signal versal_cips_0_PMC_NOC_AXI_0_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute HARD_CONN of versal_cips_0_PMC_NOC_AXI_0_AWQOS : signal is "true";
  signal versal_cips_0_PMC_NOC_AXI_0_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute HARD_CONN of versal_cips_0_PMC_NOC_AXI_0_AWREADY : signal is "true";
  signal versal_cips_0_PMC_NOC_AXI_0_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute HARD_CONN of versal_cips_0_PMC_NOC_AXI_0_AWREGION : signal is "true";
  signal versal_cips_0_PMC_NOC_AXI_0_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute HARD_CONN of versal_cips_0_PMC_NOC_AXI_0_AWSIZE : signal is "true";
  signal versal_cips_0_PMC_NOC_AXI_0_AWUSER : STD_LOGIC_VECTOR ( 17 downto 0 );
  attribute HARD_CONN of versal_cips_0_PMC_NOC_AXI_0_AWUSER : signal is "true";
  signal versal_cips_0_PMC_NOC_AXI_0_AWVALID : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_PMC_NOC_AXI_0_AWVALID : signal is "true";
  signal versal_cips_0_PMC_NOC_AXI_0_BID : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute HARD_CONN of versal_cips_0_PMC_NOC_AXI_0_BID : signal is "true";
  signal versal_cips_0_PMC_NOC_AXI_0_BREADY : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_PMC_NOC_AXI_0_BREADY : signal is "true";
  signal versal_cips_0_PMC_NOC_AXI_0_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute HARD_CONN of versal_cips_0_PMC_NOC_AXI_0_BRESP : signal is "true";
  signal versal_cips_0_PMC_NOC_AXI_0_BUSER : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute HARD_CONN of versal_cips_0_PMC_NOC_AXI_0_BUSER : signal is "true";
  signal versal_cips_0_PMC_NOC_AXI_0_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute HARD_CONN of versal_cips_0_PMC_NOC_AXI_0_BVALID : signal is "true";
  signal versal_cips_0_PMC_NOC_AXI_0_RDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  attribute HARD_CONN of versal_cips_0_PMC_NOC_AXI_0_RDATA : signal is "true";
  signal versal_cips_0_PMC_NOC_AXI_0_RID : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute HARD_CONN of versal_cips_0_PMC_NOC_AXI_0_RID : signal is "true";
  signal versal_cips_0_PMC_NOC_AXI_0_RLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute HARD_CONN of versal_cips_0_PMC_NOC_AXI_0_RLAST : signal is "true";
  signal versal_cips_0_PMC_NOC_AXI_0_RREADY : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_PMC_NOC_AXI_0_RREADY : signal is "true";
  signal versal_cips_0_PMC_NOC_AXI_0_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute HARD_CONN of versal_cips_0_PMC_NOC_AXI_0_RRESP : signal is "true";
  signal versal_cips_0_PMC_NOC_AXI_0_RUSER : STD_LOGIC_VECTOR ( 16 downto 0 );
  attribute HARD_CONN of versal_cips_0_PMC_NOC_AXI_0_RUSER : signal is "true";
  signal versal_cips_0_PMC_NOC_AXI_0_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute HARD_CONN of versal_cips_0_PMC_NOC_AXI_0_RVALID : signal is "true";
  signal versal_cips_0_PMC_NOC_AXI_0_WDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  attribute HARD_CONN of versal_cips_0_PMC_NOC_AXI_0_WDATA : signal is "true";
  signal versal_cips_0_PMC_NOC_AXI_0_WLAST : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_PMC_NOC_AXI_0_WLAST : signal is "true";
  signal versal_cips_0_PMC_NOC_AXI_0_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute HARD_CONN of versal_cips_0_PMC_NOC_AXI_0_WREADY : signal is "true";
  signal versal_cips_0_PMC_NOC_AXI_0_WSTRB : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute HARD_CONN of versal_cips_0_PMC_NOC_AXI_0_WSTRB : signal is "true";
  signal versal_cips_0_PMC_NOC_AXI_0_WUSER : STD_LOGIC_VECTOR ( 16 downto 0 );
  attribute HARD_CONN of versal_cips_0_PMC_NOC_AXI_0_WUSER : signal is "true";
  signal versal_cips_0_PMC_NOC_AXI_0_WVALID : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_PMC_NOC_AXI_0_WVALID : signal is "true";
  signal versal_cips_0_fpd_cci_noc_axi0_clk : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_fpd_cci_noc_axi0_clk : signal is "true";
  signal versal_cips_0_fpd_cci_noc_axi1_clk : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_fpd_cci_noc_axi1_clk : signal is "true";
  signal versal_cips_0_fpd_cci_noc_axi2_clk : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_fpd_cci_noc_axi2_clk : signal is "true";
  signal versal_cips_0_fpd_cci_noc_axi3_clk : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_fpd_cci_noc_axi3_clk : signal is "true";
  signal versal_cips_0_lpd_axi_noc_clk : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_lpd_axi_noc_clk : signal is "true";
  signal versal_cips_0_pmc_axi_noc_axi0_clk : STD_LOGIC;
  attribute HARD_CONN of versal_cips_0_pmc_axi_noc_axi0_clk : signal is "true";
  signal NLW_axi_noc_0_S00_AXI_ruser_UNCONNECTED : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal NLW_axi_noc_0_S01_AXI_ruser_UNCONNECTED : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal NLW_axi_noc_0_S02_AXI_ruser_UNCONNECTED : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal NLW_axi_noc_0_S03_AXI_ruser_UNCONNECTED : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal NLW_axi_noc_0_S04_AXI_ruser_UNCONNECTED : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal NLW_versal_cips_0_pl0_ref_clk_UNCONNECTED : STD_LOGIC;
  signal NLW_versal_cips_0_pl0_resetn_UNCONNECTED : STD_LOGIC;
  signal NLW_versal_cips_0_LPD_GPIO_o_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_versal_cips_0_LPD_GPIO_t_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_versal_cips_0_PMC_NOC_AXI_0_wid_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_versal_cips_0_gem0_tsu_timer_cnt_UNCONNECTED : STD_LOGIC_VECTOR ( 93 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of DDR4_act_n : signal is "xilinx.com:interface:ddr4:1.0 DDR4 ACT_N";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of DDR4_act_n : signal is "Master";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of DDR4_act_n : signal is "XIL_INTERFACENAME DDR4, AXI_ARBITRATION_SCHEME TDM, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 11, CAS_WRITE_LATENCY 11, CS_ENABLED true, DATA_MASK_ENABLED true, DATA_WIDTH 8, MEMORY_TYPE COMPONENTS, MEM_ADDR_MAP ROW_COLUMN_BANK, SLOT Single, TIMEPERIOD_PS 1250";
  attribute X_INTERFACE_INFO of DDR4_adr : signal is "xilinx.com:interface:ddr4:1.0 DDR4 ADR";
  attribute X_INTERFACE_INFO of DDR4_ba : signal is "xilinx.com:interface:ddr4:1.0 DDR4 BA";
  attribute X_INTERFACE_INFO of DDR4_bg : signal is "xilinx.com:interface:ddr4:1.0 DDR4 BG";
  attribute X_INTERFACE_INFO of DDR4_ck_c : signal is "xilinx.com:interface:ddr4:1.0 DDR4 CK_C";
  attribute X_INTERFACE_INFO of DDR4_ck_t : signal is "xilinx.com:interface:ddr4:1.0 DDR4 CK_T";
  attribute X_INTERFACE_INFO of DDR4_cke : signal is "xilinx.com:interface:ddr4:1.0 DDR4 CKE";
  attribute X_INTERFACE_INFO of DDR4_cs_n : signal is "xilinx.com:interface:ddr4:1.0 DDR4 CS_N";
  attribute X_INTERFACE_INFO of DDR4_dm_n : signal is "xilinx.com:interface:ddr4:1.0 DDR4 DM_N";
  attribute X_INTERFACE_INFO of DDR4_dq : signal is "xilinx.com:interface:ddr4:1.0 DDR4 DQ";
  attribute X_INTERFACE_INFO of DDR4_dqs_c : signal is "xilinx.com:interface:ddr4:1.0 DDR4 DQS_C";
  attribute X_INTERFACE_INFO of DDR4_dqs_t : signal is "xilinx.com:interface:ddr4:1.0 DDR4 DQS_T";
  attribute X_INTERFACE_INFO of DDR4_odt : signal is "xilinx.com:interface:ddr4:1.0 DDR4 ODT";
  attribute X_INTERFACE_INFO of DDR4_reset_n : signal is "xilinx.com:interface:ddr4:1.0 DDR4 RESET_N";
  attribute X_INTERFACE_INFO of sys_clk_clk_n : signal is "xilinx.com:interface:diff_clock:1.0 sys_clk CLK_N";
  attribute X_INTERFACE_MODE of sys_clk_clk_n : signal is "Slave";
  attribute X_INTERFACE_PARAMETER of sys_clk_clk_n : signal is "XIL_INTERFACENAME sys_clk, CAN_DEBUG false, FREQ_HZ 200000000";
  attribute X_INTERFACE_INFO of sys_clk_clk_p : signal is "xilinx.com:interface:diff_clock:1.0 sys_clk CLK_P";
begin
axi_noc_0: component design_1_axi_noc_0_0
     port map (
      CH0_DDR4_0_act_n(0) => DDR4_act_n(0),
      CH0_DDR4_0_adr(16 downto 0) => DDR4_adr(16 downto 0),
      CH0_DDR4_0_ba(1 downto 0) => DDR4_ba(1 downto 0),
      CH0_DDR4_0_bg(0) => DDR4_bg(0),
      CH0_DDR4_0_ck_c(0) => DDR4_ck_c(0),
      CH0_DDR4_0_ck_t(0) => DDR4_ck_t(0),
      CH0_DDR4_0_cke(0) => DDR4_cke(0),
      CH0_DDR4_0_cs_n(0) => DDR4_cs_n(0),
      CH0_DDR4_0_dm_n(7 downto 0) => DDR4_dm_n(7 downto 0),
      CH0_DDR4_0_dq(63 downto 0) => DDR4_dq(63 downto 0),
      CH0_DDR4_0_dqs_c(7 downto 0) => DDR4_dqs_c(7 downto 0),
      CH0_DDR4_0_dqs_t(7 downto 0) => DDR4_dqs_t(7 downto 0),
      CH0_DDR4_0_odt(0) => DDR4_odt(0),
      CH0_DDR4_0_reset_n(0) => DDR4_reset_n(0),
      S00_AXI_araddr(63 downto 0) => versal_cips_0_FPD_CCI_NOC_0_ARADDR(63 downto 0),
      S00_AXI_arburst(1 downto 0) => versal_cips_0_FPD_CCI_NOC_0_ARBURST(1 downto 0),
      S00_AXI_arcache(3 downto 0) => versal_cips_0_FPD_CCI_NOC_0_ARCACHE(3 downto 0),
      S00_AXI_arid(15 downto 0) => versal_cips_0_FPD_CCI_NOC_0_ARID(15 downto 0),
      S00_AXI_arlen(7 downto 0) => versal_cips_0_FPD_CCI_NOC_0_ARLEN(7 downto 0),
      S00_AXI_arlock(0) => versal_cips_0_FPD_CCI_NOC_0_ARLOCK,
      S00_AXI_arprot(2 downto 0) => versal_cips_0_FPD_CCI_NOC_0_ARPROT(2 downto 0),
      S00_AXI_arqos(3 downto 0) => versal_cips_0_FPD_CCI_NOC_0_ARQOS(3 downto 0),
      S00_AXI_arready(0) => versal_cips_0_FPD_CCI_NOC_0_ARREADY(0),
      S00_AXI_arregion(3 downto 0) => B"0000",
      S00_AXI_arsize(2 downto 0) => versal_cips_0_FPD_CCI_NOC_0_ARSIZE(2 downto 0),
      S00_AXI_aruser(17 downto 0) => versal_cips_0_FPD_CCI_NOC_0_ARUSER(17 downto 0),
      S00_AXI_arvalid(0) => versal_cips_0_FPD_CCI_NOC_0_ARVALID,
      S00_AXI_awaddr(63 downto 0) => versal_cips_0_FPD_CCI_NOC_0_AWADDR(63 downto 0),
      S00_AXI_awburst(1 downto 0) => versal_cips_0_FPD_CCI_NOC_0_AWBURST(1 downto 0),
      S00_AXI_awcache(3 downto 0) => versal_cips_0_FPD_CCI_NOC_0_AWCACHE(3 downto 0),
      S00_AXI_awid(15 downto 0) => versal_cips_0_FPD_CCI_NOC_0_AWID(15 downto 0),
      S00_AXI_awlen(7 downto 0) => versal_cips_0_FPD_CCI_NOC_0_AWLEN(7 downto 0),
      S00_AXI_awlock(0) => versal_cips_0_FPD_CCI_NOC_0_AWLOCK,
      S00_AXI_awprot(2 downto 0) => versal_cips_0_FPD_CCI_NOC_0_AWPROT(2 downto 0),
      S00_AXI_awqos(3 downto 0) => versal_cips_0_FPD_CCI_NOC_0_AWQOS(3 downto 0),
      S00_AXI_awready(0) => versal_cips_0_FPD_CCI_NOC_0_AWREADY(0),
      S00_AXI_awregion(3 downto 0) => B"0000",
      S00_AXI_awsize(2 downto 0) => versal_cips_0_FPD_CCI_NOC_0_AWSIZE(2 downto 0),
      S00_AXI_awuser(17 downto 0) => versal_cips_0_FPD_CCI_NOC_0_AWUSER(17 downto 0),
      S00_AXI_awvalid(0) => versal_cips_0_FPD_CCI_NOC_0_AWVALID,
      S00_AXI_bid(15 downto 0) => versal_cips_0_FPD_CCI_NOC_0_BID(15 downto 0),
      S00_AXI_bready(0) => versal_cips_0_FPD_CCI_NOC_0_BREADY,
      S00_AXI_bresp(1 downto 0) => versal_cips_0_FPD_CCI_NOC_0_BRESP(1 downto 0),
      S00_AXI_bvalid(0) => versal_cips_0_FPD_CCI_NOC_0_BVALID(0),
      S00_AXI_rdata(127 downto 0) => versal_cips_0_FPD_CCI_NOC_0_RDATA(127 downto 0),
      S00_AXI_rid(15 downto 0) => versal_cips_0_FPD_CCI_NOC_0_RID(15 downto 0),
      S00_AXI_rlast(0) => versal_cips_0_FPD_CCI_NOC_0_RLAST(0),
      S00_AXI_rready(0) => versal_cips_0_FPD_CCI_NOC_0_RREADY,
      S00_AXI_rresp(1 downto 0) => versal_cips_0_FPD_CCI_NOC_0_RRESP(1 downto 0),
      S00_AXI_ruser(16 downto 0) => NLW_axi_noc_0_S00_AXI_ruser_UNCONNECTED(16 downto 0),
      S00_AXI_rvalid(0) => versal_cips_0_FPD_CCI_NOC_0_RVALID(0),
      S00_AXI_wdata(127 downto 0) => versal_cips_0_FPD_CCI_NOC_0_WDATA(127 downto 0),
      S00_AXI_wlast(0) => versal_cips_0_FPD_CCI_NOC_0_WLAST,
      S00_AXI_wready(0) => versal_cips_0_FPD_CCI_NOC_0_WREADY(0),
      S00_AXI_wstrb(15 downto 0) => versal_cips_0_FPD_CCI_NOC_0_WSTRB(15 downto 0),
      S00_AXI_wuser(16 downto 0) => versal_cips_0_FPD_CCI_NOC_0_WUSER(16 downto 0),
      S00_AXI_wvalid(0) => versal_cips_0_FPD_CCI_NOC_0_WVALID,
      S01_AXI_araddr(63 downto 0) => versal_cips_0_FPD_CCI_NOC_1_ARADDR(63 downto 0),
      S01_AXI_arburst(1 downto 0) => versal_cips_0_FPD_CCI_NOC_1_ARBURST(1 downto 0),
      S01_AXI_arcache(3 downto 0) => versal_cips_0_FPD_CCI_NOC_1_ARCACHE(3 downto 0),
      S01_AXI_arid(15 downto 0) => versal_cips_0_FPD_CCI_NOC_1_ARID(15 downto 0),
      S01_AXI_arlen(7 downto 0) => versal_cips_0_FPD_CCI_NOC_1_ARLEN(7 downto 0),
      S01_AXI_arlock(0) => versal_cips_0_FPD_CCI_NOC_1_ARLOCK,
      S01_AXI_arprot(2 downto 0) => versal_cips_0_FPD_CCI_NOC_1_ARPROT(2 downto 0),
      S01_AXI_arqos(3 downto 0) => versal_cips_0_FPD_CCI_NOC_1_ARQOS(3 downto 0),
      S01_AXI_arready(0) => versal_cips_0_FPD_CCI_NOC_1_ARREADY(0),
      S01_AXI_arregion(3 downto 0) => B"0000",
      S01_AXI_arsize(2 downto 0) => versal_cips_0_FPD_CCI_NOC_1_ARSIZE(2 downto 0),
      S01_AXI_aruser(17 downto 0) => versal_cips_0_FPD_CCI_NOC_1_ARUSER(17 downto 0),
      S01_AXI_arvalid(0) => versal_cips_0_FPD_CCI_NOC_1_ARVALID,
      S01_AXI_awaddr(63 downto 0) => versal_cips_0_FPD_CCI_NOC_1_AWADDR(63 downto 0),
      S01_AXI_awburst(1 downto 0) => versal_cips_0_FPD_CCI_NOC_1_AWBURST(1 downto 0),
      S01_AXI_awcache(3 downto 0) => versal_cips_0_FPD_CCI_NOC_1_AWCACHE(3 downto 0),
      S01_AXI_awid(15 downto 0) => versal_cips_0_FPD_CCI_NOC_1_AWID(15 downto 0),
      S01_AXI_awlen(7 downto 0) => versal_cips_0_FPD_CCI_NOC_1_AWLEN(7 downto 0),
      S01_AXI_awlock(0) => versal_cips_0_FPD_CCI_NOC_1_AWLOCK,
      S01_AXI_awprot(2 downto 0) => versal_cips_0_FPD_CCI_NOC_1_AWPROT(2 downto 0),
      S01_AXI_awqos(3 downto 0) => versal_cips_0_FPD_CCI_NOC_1_AWQOS(3 downto 0),
      S01_AXI_awready(0) => versal_cips_0_FPD_CCI_NOC_1_AWREADY(0),
      S01_AXI_awregion(3 downto 0) => B"0000",
      S01_AXI_awsize(2 downto 0) => versal_cips_0_FPD_CCI_NOC_1_AWSIZE(2 downto 0),
      S01_AXI_awuser(17 downto 0) => versal_cips_0_FPD_CCI_NOC_1_AWUSER(17 downto 0),
      S01_AXI_awvalid(0) => versal_cips_0_FPD_CCI_NOC_1_AWVALID,
      S01_AXI_bid(15 downto 0) => versal_cips_0_FPD_CCI_NOC_1_BID(15 downto 0),
      S01_AXI_bready(0) => versal_cips_0_FPD_CCI_NOC_1_BREADY,
      S01_AXI_bresp(1 downto 0) => versal_cips_0_FPD_CCI_NOC_1_BRESP(1 downto 0),
      S01_AXI_bvalid(0) => versal_cips_0_FPD_CCI_NOC_1_BVALID(0),
      S01_AXI_rdata(127 downto 0) => versal_cips_0_FPD_CCI_NOC_1_RDATA(127 downto 0),
      S01_AXI_rid(15 downto 0) => versal_cips_0_FPD_CCI_NOC_1_RID(15 downto 0),
      S01_AXI_rlast(0) => versal_cips_0_FPD_CCI_NOC_1_RLAST(0),
      S01_AXI_rready(0) => versal_cips_0_FPD_CCI_NOC_1_RREADY,
      S01_AXI_rresp(1 downto 0) => versal_cips_0_FPD_CCI_NOC_1_RRESP(1 downto 0),
      S01_AXI_ruser(16 downto 0) => NLW_axi_noc_0_S01_AXI_ruser_UNCONNECTED(16 downto 0),
      S01_AXI_rvalid(0) => versal_cips_0_FPD_CCI_NOC_1_RVALID(0),
      S01_AXI_wdata(127 downto 0) => versal_cips_0_FPD_CCI_NOC_1_WDATA(127 downto 0),
      S01_AXI_wlast(0) => versal_cips_0_FPD_CCI_NOC_1_WLAST,
      S01_AXI_wready(0) => versal_cips_0_FPD_CCI_NOC_1_WREADY(0),
      S01_AXI_wstrb(15 downto 0) => versal_cips_0_FPD_CCI_NOC_1_WSTRB(15 downto 0),
      S01_AXI_wuser(16 downto 0) => versal_cips_0_FPD_CCI_NOC_1_WUSER(16 downto 0),
      S01_AXI_wvalid(0) => versal_cips_0_FPD_CCI_NOC_1_WVALID,
      S02_AXI_araddr(63 downto 0) => versal_cips_0_FPD_CCI_NOC_2_ARADDR(63 downto 0),
      S02_AXI_arburst(1 downto 0) => versal_cips_0_FPD_CCI_NOC_2_ARBURST(1 downto 0),
      S02_AXI_arcache(3 downto 0) => versal_cips_0_FPD_CCI_NOC_2_ARCACHE(3 downto 0),
      S02_AXI_arid(15 downto 0) => versal_cips_0_FPD_CCI_NOC_2_ARID(15 downto 0),
      S02_AXI_arlen(7 downto 0) => versal_cips_0_FPD_CCI_NOC_2_ARLEN(7 downto 0),
      S02_AXI_arlock(0) => versal_cips_0_FPD_CCI_NOC_2_ARLOCK,
      S02_AXI_arprot(2 downto 0) => versal_cips_0_FPD_CCI_NOC_2_ARPROT(2 downto 0),
      S02_AXI_arqos(3 downto 0) => versal_cips_0_FPD_CCI_NOC_2_ARQOS(3 downto 0),
      S02_AXI_arready(0) => versal_cips_0_FPD_CCI_NOC_2_ARREADY(0),
      S02_AXI_arregion(3 downto 0) => B"0000",
      S02_AXI_arsize(2 downto 0) => versal_cips_0_FPD_CCI_NOC_2_ARSIZE(2 downto 0),
      S02_AXI_aruser(17 downto 0) => versal_cips_0_FPD_CCI_NOC_2_ARUSER(17 downto 0),
      S02_AXI_arvalid(0) => versal_cips_0_FPD_CCI_NOC_2_ARVALID,
      S02_AXI_awaddr(63 downto 0) => versal_cips_0_FPD_CCI_NOC_2_AWADDR(63 downto 0),
      S02_AXI_awburst(1 downto 0) => versal_cips_0_FPD_CCI_NOC_2_AWBURST(1 downto 0),
      S02_AXI_awcache(3 downto 0) => versal_cips_0_FPD_CCI_NOC_2_AWCACHE(3 downto 0),
      S02_AXI_awid(15 downto 0) => versal_cips_0_FPD_CCI_NOC_2_AWID(15 downto 0),
      S02_AXI_awlen(7 downto 0) => versal_cips_0_FPD_CCI_NOC_2_AWLEN(7 downto 0),
      S02_AXI_awlock(0) => versal_cips_0_FPD_CCI_NOC_2_AWLOCK,
      S02_AXI_awprot(2 downto 0) => versal_cips_0_FPD_CCI_NOC_2_AWPROT(2 downto 0),
      S02_AXI_awqos(3 downto 0) => versal_cips_0_FPD_CCI_NOC_2_AWQOS(3 downto 0),
      S02_AXI_awready(0) => versal_cips_0_FPD_CCI_NOC_2_AWREADY(0),
      S02_AXI_awregion(3 downto 0) => B"0000",
      S02_AXI_awsize(2 downto 0) => versal_cips_0_FPD_CCI_NOC_2_AWSIZE(2 downto 0),
      S02_AXI_awuser(17 downto 0) => versal_cips_0_FPD_CCI_NOC_2_AWUSER(17 downto 0),
      S02_AXI_awvalid(0) => versal_cips_0_FPD_CCI_NOC_2_AWVALID,
      S02_AXI_bid(15 downto 0) => versal_cips_0_FPD_CCI_NOC_2_BID(15 downto 0),
      S02_AXI_bready(0) => versal_cips_0_FPD_CCI_NOC_2_BREADY,
      S02_AXI_bresp(1 downto 0) => versal_cips_0_FPD_CCI_NOC_2_BRESP(1 downto 0),
      S02_AXI_bvalid(0) => versal_cips_0_FPD_CCI_NOC_2_BVALID(0),
      S02_AXI_rdata(127 downto 0) => versal_cips_0_FPD_CCI_NOC_2_RDATA(127 downto 0),
      S02_AXI_rid(15 downto 0) => versal_cips_0_FPD_CCI_NOC_2_RID(15 downto 0),
      S02_AXI_rlast(0) => versal_cips_0_FPD_CCI_NOC_2_RLAST(0),
      S02_AXI_rready(0) => versal_cips_0_FPD_CCI_NOC_2_RREADY,
      S02_AXI_rresp(1 downto 0) => versal_cips_0_FPD_CCI_NOC_2_RRESP(1 downto 0),
      S02_AXI_ruser(16 downto 0) => NLW_axi_noc_0_S02_AXI_ruser_UNCONNECTED(16 downto 0),
      S02_AXI_rvalid(0) => versal_cips_0_FPD_CCI_NOC_2_RVALID(0),
      S02_AXI_wdata(127 downto 0) => versal_cips_0_FPD_CCI_NOC_2_WDATA(127 downto 0),
      S02_AXI_wlast(0) => versal_cips_0_FPD_CCI_NOC_2_WLAST,
      S02_AXI_wready(0) => versal_cips_0_FPD_CCI_NOC_2_WREADY(0),
      S02_AXI_wstrb(15 downto 0) => versal_cips_0_FPD_CCI_NOC_2_WSTRB(15 downto 0),
      S02_AXI_wuser(16 downto 0) => versal_cips_0_FPD_CCI_NOC_2_WUSER(16 downto 0),
      S02_AXI_wvalid(0) => versal_cips_0_FPD_CCI_NOC_2_WVALID,
      S03_AXI_araddr(63 downto 0) => versal_cips_0_FPD_CCI_NOC_3_ARADDR(63 downto 0),
      S03_AXI_arburst(1 downto 0) => versal_cips_0_FPD_CCI_NOC_3_ARBURST(1 downto 0),
      S03_AXI_arcache(3 downto 0) => versal_cips_0_FPD_CCI_NOC_3_ARCACHE(3 downto 0),
      S03_AXI_arid(15 downto 0) => versal_cips_0_FPD_CCI_NOC_3_ARID(15 downto 0),
      S03_AXI_arlen(7 downto 0) => versal_cips_0_FPD_CCI_NOC_3_ARLEN(7 downto 0),
      S03_AXI_arlock(0) => versal_cips_0_FPD_CCI_NOC_3_ARLOCK,
      S03_AXI_arprot(2 downto 0) => versal_cips_0_FPD_CCI_NOC_3_ARPROT(2 downto 0),
      S03_AXI_arqos(3 downto 0) => versal_cips_0_FPD_CCI_NOC_3_ARQOS(3 downto 0),
      S03_AXI_arready(0) => versal_cips_0_FPD_CCI_NOC_3_ARREADY(0),
      S03_AXI_arregion(3 downto 0) => B"0000",
      S03_AXI_arsize(2 downto 0) => versal_cips_0_FPD_CCI_NOC_3_ARSIZE(2 downto 0),
      S03_AXI_aruser(17 downto 0) => versal_cips_0_FPD_CCI_NOC_3_ARUSER(17 downto 0),
      S03_AXI_arvalid(0) => versal_cips_0_FPD_CCI_NOC_3_ARVALID,
      S03_AXI_awaddr(63 downto 0) => versal_cips_0_FPD_CCI_NOC_3_AWADDR(63 downto 0),
      S03_AXI_awburst(1 downto 0) => versal_cips_0_FPD_CCI_NOC_3_AWBURST(1 downto 0),
      S03_AXI_awcache(3 downto 0) => versal_cips_0_FPD_CCI_NOC_3_AWCACHE(3 downto 0),
      S03_AXI_awid(15 downto 0) => versal_cips_0_FPD_CCI_NOC_3_AWID(15 downto 0),
      S03_AXI_awlen(7 downto 0) => versal_cips_0_FPD_CCI_NOC_3_AWLEN(7 downto 0),
      S03_AXI_awlock(0) => versal_cips_0_FPD_CCI_NOC_3_AWLOCK,
      S03_AXI_awprot(2 downto 0) => versal_cips_0_FPD_CCI_NOC_3_AWPROT(2 downto 0),
      S03_AXI_awqos(3 downto 0) => versal_cips_0_FPD_CCI_NOC_3_AWQOS(3 downto 0),
      S03_AXI_awready(0) => versal_cips_0_FPD_CCI_NOC_3_AWREADY(0),
      S03_AXI_awregion(3 downto 0) => B"0000",
      S03_AXI_awsize(2 downto 0) => versal_cips_0_FPD_CCI_NOC_3_AWSIZE(2 downto 0),
      S03_AXI_awuser(17 downto 0) => versal_cips_0_FPD_CCI_NOC_3_AWUSER(17 downto 0),
      S03_AXI_awvalid(0) => versal_cips_0_FPD_CCI_NOC_3_AWVALID,
      S03_AXI_bid(15 downto 0) => versal_cips_0_FPD_CCI_NOC_3_BID(15 downto 0),
      S03_AXI_bready(0) => versal_cips_0_FPD_CCI_NOC_3_BREADY,
      S03_AXI_bresp(1 downto 0) => versal_cips_0_FPD_CCI_NOC_3_BRESP(1 downto 0),
      S03_AXI_bvalid(0) => versal_cips_0_FPD_CCI_NOC_3_BVALID(0),
      S03_AXI_rdata(127 downto 0) => versal_cips_0_FPD_CCI_NOC_3_RDATA(127 downto 0),
      S03_AXI_rid(15 downto 0) => versal_cips_0_FPD_CCI_NOC_3_RID(15 downto 0),
      S03_AXI_rlast(0) => versal_cips_0_FPD_CCI_NOC_3_RLAST(0),
      S03_AXI_rready(0) => versal_cips_0_FPD_CCI_NOC_3_RREADY,
      S03_AXI_rresp(1 downto 0) => versal_cips_0_FPD_CCI_NOC_3_RRESP(1 downto 0),
      S03_AXI_ruser(16 downto 0) => NLW_axi_noc_0_S03_AXI_ruser_UNCONNECTED(16 downto 0),
      S03_AXI_rvalid(0) => versal_cips_0_FPD_CCI_NOC_3_RVALID(0),
      S03_AXI_wdata(127 downto 0) => versal_cips_0_FPD_CCI_NOC_3_WDATA(127 downto 0),
      S03_AXI_wlast(0) => versal_cips_0_FPD_CCI_NOC_3_WLAST,
      S03_AXI_wready(0) => versal_cips_0_FPD_CCI_NOC_3_WREADY(0),
      S03_AXI_wstrb(15 downto 0) => versal_cips_0_FPD_CCI_NOC_3_WSTRB(15 downto 0),
      S03_AXI_wuser(16 downto 0) => versal_cips_0_FPD_CCI_NOC_3_WUSER(16 downto 0),
      S03_AXI_wvalid(0) => versal_cips_0_FPD_CCI_NOC_3_WVALID,
      S04_AXI_araddr(63 downto 0) => versal_cips_0_LPD_AXI_NOC_0_ARADDR(63 downto 0),
      S04_AXI_arburst(1 downto 0) => versal_cips_0_LPD_AXI_NOC_0_ARBURST(1 downto 0),
      S04_AXI_arcache(3 downto 0) => versal_cips_0_LPD_AXI_NOC_0_ARCACHE(3 downto 0),
      S04_AXI_arid(15 downto 0) => versal_cips_0_LPD_AXI_NOC_0_ARID(15 downto 0),
      S04_AXI_arlen(7 downto 0) => versal_cips_0_LPD_AXI_NOC_0_ARLEN(7 downto 0),
      S04_AXI_arlock(0) => versal_cips_0_LPD_AXI_NOC_0_ARLOCK,
      S04_AXI_arprot(2 downto 0) => versal_cips_0_LPD_AXI_NOC_0_ARPROT(2 downto 0),
      S04_AXI_arqos(3 downto 0) => versal_cips_0_LPD_AXI_NOC_0_ARQOS(3 downto 0),
      S04_AXI_arready(0) => versal_cips_0_LPD_AXI_NOC_0_ARREADY(0),
      S04_AXI_arregion(3 downto 0) => B"0000",
      S04_AXI_arsize(2 downto 0) => versal_cips_0_LPD_AXI_NOC_0_ARSIZE(2 downto 0),
      S04_AXI_aruser(17 downto 0) => versal_cips_0_LPD_AXI_NOC_0_ARUSER(17 downto 0),
      S04_AXI_arvalid(0) => versal_cips_0_LPD_AXI_NOC_0_ARVALID,
      S04_AXI_awaddr(63 downto 0) => versal_cips_0_LPD_AXI_NOC_0_AWADDR(63 downto 0),
      S04_AXI_awburst(1 downto 0) => versal_cips_0_LPD_AXI_NOC_0_AWBURST(1 downto 0),
      S04_AXI_awcache(3 downto 0) => versal_cips_0_LPD_AXI_NOC_0_AWCACHE(3 downto 0),
      S04_AXI_awid(15 downto 0) => versal_cips_0_LPD_AXI_NOC_0_AWID(15 downto 0),
      S04_AXI_awlen(7 downto 0) => versal_cips_0_LPD_AXI_NOC_0_AWLEN(7 downto 0),
      S04_AXI_awlock(0) => versal_cips_0_LPD_AXI_NOC_0_AWLOCK,
      S04_AXI_awprot(2 downto 0) => versal_cips_0_LPD_AXI_NOC_0_AWPROT(2 downto 0),
      S04_AXI_awqos(3 downto 0) => versal_cips_0_LPD_AXI_NOC_0_AWQOS(3 downto 0),
      S04_AXI_awready(0) => versal_cips_0_LPD_AXI_NOC_0_AWREADY(0),
      S04_AXI_awregion(3 downto 0) => B"0000",
      S04_AXI_awsize(2 downto 0) => versal_cips_0_LPD_AXI_NOC_0_AWSIZE(2 downto 0),
      S04_AXI_awuser(17 downto 0) => versal_cips_0_LPD_AXI_NOC_0_AWUSER(17 downto 0),
      S04_AXI_awvalid(0) => versal_cips_0_LPD_AXI_NOC_0_AWVALID,
      S04_AXI_bid(15 downto 0) => versal_cips_0_LPD_AXI_NOC_0_BID(15 downto 0),
      S04_AXI_bready(0) => versal_cips_0_LPD_AXI_NOC_0_BREADY,
      S04_AXI_bresp(1 downto 0) => versal_cips_0_LPD_AXI_NOC_0_BRESP(1 downto 0),
      S04_AXI_bvalid(0) => versal_cips_0_LPD_AXI_NOC_0_BVALID(0),
      S04_AXI_rdata(127 downto 0) => versal_cips_0_LPD_AXI_NOC_0_RDATA(127 downto 0),
      S04_AXI_rid(15 downto 0) => versal_cips_0_LPD_AXI_NOC_0_RID(15 downto 0),
      S04_AXI_rlast(0) => versal_cips_0_LPD_AXI_NOC_0_RLAST(0),
      S04_AXI_rready(0) => versal_cips_0_LPD_AXI_NOC_0_RREADY,
      S04_AXI_rresp(1 downto 0) => versal_cips_0_LPD_AXI_NOC_0_RRESP(1 downto 0),
      S04_AXI_ruser(16 downto 0) => NLW_axi_noc_0_S04_AXI_ruser_UNCONNECTED(16 downto 0),
      S04_AXI_rvalid(0) => versal_cips_0_LPD_AXI_NOC_0_RVALID(0),
      S04_AXI_wdata(127 downto 0) => versal_cips_0_LPD_AXI_NOC_0_WDATA(127 downto 0),
      S04_AXI_wlast(0) => versal_cips_0_LPD_AXI_NOC_0_WLAST,
      S04_AXI_wready(0) => versal_cips_0_LPD_AXI_NOC_0_WREADY(0),
      S04_AXI_wstrb(15 downto 0) => versal_cips_0_LPD_AXI_NOC_0_WSTRB(15 downto 0),
      S04_AXI_wuser(16 downto 0) => B"00000000000000000",
      S04_AXI_wvalid(0) => versal_cips_0_LPD_AXI_NOC_0_WVALID,
      S05_AXI_araddr(63 downto 0) => versal_cips_0_PMC_NOC_AXI_0_ARADDR(63 downto 0),
      S05_AXI_arburst(1 downto 0) => versal_cips_0_PMC_NOC_AXI_0_ARBURST(1 downto 0),
      S05_AXI_arcache(3 downto 0) => versal_cips_0_PMC_NOC_AXI_0_ARCACHE(3 downto 0),
      S05_AXI_arid(15 downto 0) => versal_cips_0_PMC_NOC_AXI_0_ARID(15 downto 0),
      S05_AXI_arlen(7 downto 0) => versal_cips_0_PMC_NOC_AXI_0_ARLEN(7 downto 0),
      S05_AXI_arlock(0) => versal_cips_0_PMC_NOC_AXI_0_ARLOCK,
      S05_AXI_arprot(2 downto 0) => versal_cips_0_PMC_NOC_AXI_0_ARPROT(2 downto 0),
      S05_AXI_arqos(3 downto 0) => versal_cips_0_PMC_NOC_AXI_0_ARQOS(3 downto 0),
      S05_AXI_arready(0) => versal_cips_0_PMC_NOC_AXI_0_ARREADY(0),
      S05_AXI_arregion(3 downto 0) => versal_cips_0_PMC_NOC_AXI_0_ARREGION(3 downto 0),
      S05_AXI_arsize(2 downto 0) => versal_cips_0_PMC_NOC_AXI_0_ARSIZE(2 downto 0),
      S05_AXI_aruser(17 downto 0) => versal_cips_0_PMC_NOC_AXI_0_ARUSER(17 downto 0),
      S05_AXI_arvalid(0) => versal_cips_0_PMC_NOC_AXI_0_ARVALID,
      S05_AXI_awaddr(63 downto 0) => versal_cips_0_PMC_NOC_AXI_0_AWADDR(63 downto 0),
      S05_AXI_awburst(1 downto 0) => versal_cips_0_PMC_NOC_AXI_0_AWBURST(1 downto 0),
      S05_AXI_awcache(3 downto 0) => versal_cips_0_PMC_NOC_AXI_0_AWCACHE(3 downto 0),
      S05_AXI_awid(15 downto 0) => versal_cips_0_PMC_NOC_AXI_0_AWID(15 downto 0),
      S05_AXI_awlen(7 downto 0) => versal_cips_0_PMC_NOC_AXI_0_AWLEN(7 downto 0),
      S05_AXI_awlock(0) => versal_cips_0_PMC_NOC_AXI_0_AWLOCK,
      S05_AXI_awprot(2 downto 0) => versal_cips_0_PMC_NOC_AXI_0_AWPROT(2 downto 0),
      S05_AXI_awqos(3 downto 0) => versal_cips_0_PMC_NOC_AXI_0_AWQOS(3 downto 0),
      S05_AXI_awready(0) => versal_cips_0_PMC_NOC_AXI_0_AWREADY(0),
      S05_AXI_awregion(3 downto 0) => versal_cips_0_PMC_NOC_AXI_0_AWREGION(3 downto 0),
      S05_AXI_awsize(2 downto 0) => versal_cips_0_PMC_NOC_AXI_0_AWSIZE(2 downto 0),
      S05_AXI_awuser(17 downto 0) => versal_cips_0_PMC_NOC_AXI_0_AWUSER(17 downto 0),
      S05_AXI_awvalid(0) => versal_cips_0_PMC_NOC_AXI_0_AWVALID,
      S05_AXI_bid(15 downto 0) => versal_cips_0_PMC_NOC_AXI_0_BID(15 downto 0),
      S05_AXI_bready(0) => versal_cips_0_PMC_NOC_AXI_0_BREADY,
      S05_AXI_bresp(1 downto 0) => versal_cips_0_PMC_NOC_AXI_0_BRESP(1 downto 0),
      S05_AXI_buser(15 downto 0) => versal_cips_0_PMC_NOC_AXI_0_BUSER(15 downto 0),
      S05_AXI_bvalid(0) => versal_cips_0_PMC_NOC_AXI_0_BVALID(0),
      S05_AXI_rdata(127 downto 0) => versal_cips_0_PMC_NOC_AXI_0_RDATA(127 downto 0),
      S05_AXI_rid(15 downto 0) => versal_cips_0_PMC_NOC_AXI_0_RID(15 downto 0),
      S05_AXI_rlast(0) => versal_cips_0_PMC_NOC_AXI_0_RLAST(0),
      S05_AXI_rready(0) => versal_cips_0_PMC_NOC_AXI_0_RREADY,
      S05_AXI_rresp(1 downto 0) => versal_cips_0_PMC_NOC_AXI_0_RRESP(1 downto 0),
      S05_AXI_ruser(16 downto 0) => versal_cips_0_PMC_NOC_AXI_0_RUSER(16 downto 0),
      S05_AXI_rvalid(0) => versal_cips_0_PMC_NOC_AXI_0_RVALID(0),
      S05_AXI_wdata(127 downto 0) => versal_cips_0_PMC_NOC_AXI_0_WDATA(127 downto 0),
      S05_AXI_wlast(0) => versal_cips_0_PMC_NOC_AXI_0_WLAST,
      S05_AXI_wready(0) => versal_cips_0_PMC_NOC_AXI_0_WREADY(0),
      S05_AXI_wstrb(15 downto 0) => versal_cips_0_PMC_NOC_AXI_0_WSTRB(15 downto 0),
      S05_AXI_wuser(16 downto 0) => versal_cips_0_PMC_NOC_AXI_0_WUSER(16 downto 0),
      S05_AXI_wvalid(0) => versal_cips_0_PMC_NOC_AXI_0_WVALID,
      aclk0 => versal_cips_0_fpd_cci_noc_axi0_clk,
      aclk1 => versal_cips_0_fpd_cci_noc_axi1_clk,
      aclk2 => versal_cips_0_fpd_cci_noc_axi2_clk,
      aclk3 => versal_cips_0_fpd_cci_noc_axi3_clk,
      aclk4 => versal_cips_0_lpd_axi_noc_clk,
      aclk5 => versal_cips_0_pmc_axi_noc_axi0_clk,
      sys_clk0_clk_n(0) => sys_clk_clk_n(0),
      sys_clk0_clk_p(0) => sys_clk_clk_p(0)
    );
versal_cips_0: component design_1_versal_cips_0_0
     port map (
      FPD_CCI_NOC_0_araddr(63 downto 0) => versal_cips_0_FPD_CCI_NOC_0_ARADDR(63 downto 0),
      FPD_CCI_NOC_0_arburst(1 downto 0) => versal_cips_0_FPD_CCI_NOC_0_ARBURST(1 downto 0),
      FPD_CCI_NOC_0_arcache(3 downto 0) => versal_cips_0_FPD_CCI_NOC_0_ARCACHE(3 downto 0),
      FPD_CCI_NOC_0_arid(15 downto 0) => versal_cips_0_FPD_CCI_NOC_0_ARID(15 downto 0),
      FPD_CCI_NOC_0_arlen(7 downto 0) => versal_cips_0_FPD_CCI_NOC_0_ARLEN(7 downto 0),
      FPD_CCI_NOC_0_arlock => versal_cips_0_FPD_CCI_NOC_0_ARLOCK,
      FPD_CCI_NOC_0_arprot(2 downto 0) => versal_cips_0_FPD_CCI_NOC_0_ARPROT(2 downto 0),
      FPD_CCI_NOC_0_arqos(3 downto 0) => versal_cips_0_FPD_CCI_NOC_0_ARQOS(3 downto 0),
      FPD_CCI_NOC_0_arready => versal_cips_0_FPD_CCI_NOC_0_ARREADY(0),
      FPD_CCI_NOC_0_arsize(2 downto 0) => versal_cips_0_FPD_CCI_NOC_0_ARSIZE(2 downto 0),
      FPD_CCI_NOC_0_aruser(17 downto 0) => versal_cips_0_FPD_CCI_NOC_0_ARUSER(17 downto 0),
      FPD_CCI_NOC_0_arvalid => versal_cips_0_FPD_CCI_NOC_0_ARVALID,
      FPD_CCI_NOC_0_awaddr(63 downto 0) => versal_cips_0_FPD_CCI_NOC_0_AWADDR(63 downto 0),
      FPD_CCI_NOC_0_awburst(1 downto 0) => versal_cips_0_FPD_CCI_NOC_0_AWBURST(1 downto 0),
      FPD_CCI_NOC_0_awcache(3 downto 0) => versal_cips_0_FPD_CCI_NOC_0_AWCACHE(3 downto 0),
      FPD_CCI_NOC_0_awid(15 downto 0) => versal_cips_0_FPD_CCI_NOC_0_AWID(15 downto 0),
      FPD_CCI_NOC_0_awlen(7 downto 0) => versal_cips_0_FPD_CCI_NOC_0_AWLEN(7 downto 0),
      FPD_CCI_NOC_0_awlock => versal_cips_0_FPD_CCI_NOC_0_AWLOCK,
      FPD_CCI_NOC_0_awprot(2 downto 0) => versal_cips_0_FPD_CCI_NOC_0_AWPROT(2 downto 0),
      FPD_CCI_NOC_0_awqos(3 downto 0) => versal_cips_0_FPD_CCI_NOC_0_AWQOS(3 downto 0),
      FPD_CCI_NOC_0_awready => versal_cips_0_FPD_CCI_NOC_0_AWREADY(0),
      FPD_CCI_NOC_0_awsize(2 downto 0) => versal_cips_0_FPD_CCI_NOC_0_AWSIZE(2 downto 0),
      FPD_CCI_NOC_0_awuser(17 downto 0) => versal_cips_0_FPD_CCI_NOC_0_AWUSER(17 downto 0),
      FPD_CCI_NOC_0_awvalid => versal_cips_0_FPD_CCI_NOC_0_AWVALID,
      FPD_CCI_NOC_0_bid(15 downto 0) => versal_cips_0_FPD_CCI_NOC_0_BID(15 downto 0),
      FPD_CCI_NOC_0_bready => versal_cips_0_FPD_CCI_NOC_0_BREADY,
      FPD_CCI_NOC_0_bresp(1 downto 0) => versal_cips_0_FPD_CCI_NOC_0_BRESP(1 downto 0),
      FPD_CCI_NOC_0_bvalid => versal_cips_0_FPD_CCI_NOC_0_BVALID(0),
      FPD_CCI_NOC_0_rdata(127 downto 0) => versal_cips_0_FPD_CCI_NOC_0_RDATA(127 downto 0),
      FPD_CCI_NOC_0_rid(15 downto 0) => versal_cips_0_FPD_CCI_NOC_0_RID(15 downto 0),
      FPD_CCI_NOC_0_rlast => versal_cips_0_FPD_CCI_NOC_0_RLAST(0),
      FPD_CCI_NOC_0_rready => versal_cips_0_FPD_CCI_NOC_0_RREADY,
      FPD_CCI_NOC_0_rresp(1 downto 0) => versal_cips_0_FPD_CCI_NOC_0_RRESP(1 downto 0),
      FPD_CCI_NOC_0_rvalid => versal_cips_0_FPD_CCI_NOC_0_RVALID(0),
      FPD_CCI_NOC_0_wdata(127 downto 0) => versal_cips_0_FPD_CCI_NOC_0_WDATA(127 downto 0),
      FPD_CCI_NOC_0_wlast => versal_cips_0_FPD_CCI_NOC_0_WLAST,
      FPD_CCI_NOC_0_wready => versal_cips_0_FPD_CCI_NOC_0_WREADY(0),
      FPD_CCI_NOC_0_wstrb(15 downto 0) => versal_cips_0_FPD_CCI_NOC_0_WSTRB(15 downto 0),
      FPD_CCI_NOC_0_wuser(16 downto 0) => versal_cips_0_FPD_CCI_NOC_0_WUSER(16 downto 0),
      FPD_CCI_NOC_0_wvalid => versal_cips_0_FPD_CCI_NOC_0_WVALID,
      FPD_CCI_NOC_1_araddr(63 downto 0) => versal_cips_0_FPD_CCI_NOC_1_ARADDR(63 downto 0),
      FPD_CCI_NOC_1_arburst(1 downto 0) => versal_cips_0_FPD_CCI_NOC_1_ARBURST(1 downto 0),
      FPD_CCI_NOC_1_arcache(3 downto 0) => versal_cips_0_FPD_CCI_NOC_1_ARCACHE(3 downto 0),
      FPD_CCI_NOC_1_arid(15 downto 0) => versal_cips_0_FPD_CCI_NOC_1_ARID(15 downto 0),
      FPD_CCI_NOC_1_arlen(7 downto 0) => versal_cips_0_FPD_CCI_NOC_1_ARLEN(7 downto 0),
      FPD_CCI_NOC_1_arlock => versal_cips_0_FPD_CCI_NOC_1_ARLOCK,
      FPD_CCI_NOC_1_arprot(2 downto 0) => versal_cips_0_FPD_CCI_NOC_1_ARPROT(2 downto 0),
      FPD_CCI_NOC_1_arqos(3 downto 0) => versal_cips_0_FPD_CCI_NOC_1_ARQOS(3 downto 0),
      FPD_CCI_NOC_1_arready => versal_cips_0_FPD_CCI_NOC_1_ARREADY(0),
      FPD_CCI_NOC_1_arsize(2 downto 0) => versal_cips_0_FPD_CCI_NOC_1_ARSIZE(2 downto 0),
      FPD_CCI_NOC_1_aruser(17 downto 0) => versal_cips_0_FPD_CCI_NOC_1_ARUSER(17 downto 0),
      FPD_CCI_NOC_1_arvalid => versal_cips_0_FPD_CCI_NOC_1_ARVALID,
      FPD_CCI_NOC_1_awaddr(63 downto 0) => versal_cips_0_FPD_CCI_NOC_1_AWADDR(63 downto 0),
      FPD_CCI_NOC_1_awburst(1 downto 0) => versal_cips_0_FPD_CCI_NOC_1_AWBURST(1 downto 0),
      FPD_CCI_NOC_1_awcache(3 downto 0) => versal_cips_0_FPD_CCI_NOC_1_AWCACHE(3 downto 0),
      FPD_CCI_NOC_1_awid(15 downto 0) => versal_cips_0_FPD_CCI_NOC_1_AWID(15 downto 0),
      FPD_CCI_NOC_1_awlen(7 downto 0) => versal_cips_0_FPD_CCI_NOC_1_AWLEN(7 downto 0),
      FPD_CCI_NOC_1_awlock => versal_cips_0_FPD_CCI_NOC_1_AWLOCK,
      FPD_CCI_NOC_1_awprot(2 downto 0) => versal_cips_0_FPD_CCI_NOC_1_AWPROT(2 downto 0),
      FPD_CCI_NOC_1_awqos(3 downto 0) => versal_cips_0_FPD_CCI_NOC_1_AWQOS(3 downto 0),
      FPD_CCI_NOC_1_awready => versal_cips_0_FPD_CCI_NOC_1_AWREADY(0),
      FPD_CCI_NOC_1_awsize(2 downto 0) => versal_cips_0_FPD_CCI_NOC_1_AWSIZE(2 downto 0),
      FPD_CCI_NOC_1_awuser(17 downto 0) => versal_cips_0_FPD_CCI_NOC_1_AWUSER(17 downto 0),
      FPD_CCI_NOC_1_awvalid => versal_cips_0_FPD_CCI_NOC_1_AWVALID,
      FPD_CCI_NOC_1_bid(15 downto 0) => versal_cips_0_FPD_CCI_NOC_1_BID(15 downto 0),
      FPD_CCI_NOC_1_bready => versal_cips_0_FPD_CCI_NOC_1_BREADY,
      FPD_CCI_NOC_1_bresp(1 downto 0) => versal_cips_0_FPD_CCI_NOC_1_BRESP(1 downto 0),
      FPD_CCI_NOC_1_bvalid => versal_cips_0_FPD_CCI_NOC_1_BVALID(0),
      FPD_CCI_NOC_1_rdata(127 downto 0) => versal_cips_0_FPD_CCI_NOC_1_RDATA(127 downto 0),
      FPD_CCI_NOC_1_rid(15 downto 0) => versal_cips_0_FPD_CCI_NOC_1_RID(15 downto 0),
      FPD_CCI_NOC_1_rlast => versal_cips_0_FPD_CCI_NOC_1_RLAST(0),
      FPD_CCI_NOC_1_rready => versal_cips_0_FPD_CCI_NOC_1_RREADY,
      FPD_CCI_NOC_1_rresp(1 downto 0) => versal_cips_0_FPD_CCI_NOC_1_RRESP(1 downto 0),
      FPD_CCI_NOC_1_rvalid => versal_cips_0_FPD_CCI_NOC_1_RVALID(0),
      FPD_CCI_NOC_1_wdata(127 downto 0) => versal_cips_0_FPD_CCI_NOC_1_WDATA(127 downto 0),
      FPD_CCI_NOC_1_wlast => versal_cips_0_FPD_CCI_NOC_1_WLAST,
      FPD_CCI_NOC_1_wready => versal_cips_0_FPD_CCI_NOC_1_WREADY(0),
      FPD_CCI_NOC_1_wstrb(15 downto 0) => versal_cips_0_FPD_CCI_NOC_1_WSTRB(15 downto 0),
      FPD_CCI_NOC_1_wuser(16 downto 0) => versal_cips_0_FPD_CCI_NOC_1_WUSER(16 downto 0),
      FPD_CCI_NOC_1_wvalid => versal_cips_0_FPD_CCI_NOC_1_WVALID,
      FPD_CCI_NOC_2_araddr(63 downto 0) => versal_cips_0_FPD_CCI_NOC_2_ARADDR(63 downto 0),
      FPD_CCI_NOC_2_arburst(1 downto 0) => versal_cips_0_FPD_CCI_NOC_2_ARBURST(1 downto 0),
      FPD_CCI_NOC_2_arcache(3 downto 0) => versal_cips_0_FPD_CCI_NOC_2_ARCACHE(3 downto 0),
      FPD_CCI_NOC_2_arid(15 downto 0) => versal_cips_0_FPD_CCI_NOC_2_ARID(15 downto 0),
      FPD_CCI_NOC_2_arlen(7 downto 0) => versal_cips_0_FPD_CCI_NOC_2_ARLEN(7 downto 0),
      FPD_CCI_NOC_2_arlock => versal_cips_0_FPD_CCI_NOC_2_ARLOCK,
      FPD_CCI_NOC_2_arprot(2 downto 0) => versal_cips_0_FPD_CCI_NOC_2_ARPROT(2 downto 0),
      FPD_CCI_NOC_2_arqos(3 downto 0) => versal_cips_0_FPD_CCI_NOC_2_ARQOS(3 downto 0),
      FPD_CCI_NOC_2_arready => versal_cips_0_FPD_CCI_NOC_2_ARREADY(0),
      FPD_CCI_NOC_2_arsize(2 downto 0) => versal_cips_0_FPD_CCI_NOC_2_ARSIZE(2 downto 0),
      FPD_CCI_NOC_2_aruser(17 downto 0) => versal_cips_0_FPD_CCI_NOC_2_ARUSER(17 downto 0),
      FPD_CCI_NOC_2_arvalid => versal_cips_0_FPD_CCI_NOC_2_ARVALID,
      FPD_CCI_NOC_2_awaddr(63 downto 0) => versal_cips_0_FPD_CCI_NOC_2_AWADDR(63 downto 0),
      FPD_CCI_NOC_2_awburst(1 downto 0) => versal_cips_0_FPD_CCI_NOC_2_AWBURST(1 downto 0),
      FPD_CCI_NOC_2_awcache(3 downto 0) => versal_cips_0_FPD_CCI_NOC_2_AWCACHE(3 downto 0),
      FPD_CCI_NOC_2_awid(15 downto 0) => versal_cips_0_FPD_CCI_NOC_2_AWID(15 downto 0),
      FPD_CCI_NOC_2_awlen(7 downto 0) => versal_cips_0_FPD_CCI_NOC_2_AWLEN(7 downto 0),
      FPD_CCI_NOC_2_awlock => versal_cips_0_FPD_CCI_NOC_2_AWLOCK,
      FPD_CCI_NOC_2_awprot(2 downto 0) => versal_cips_0_FPD_CCI_NOC_2_AWPROT(2 downto 0),
      FPD_CCI_NOC_2_awqos(3 downto 0) => versal_cips_0_FPD_CCI_NOC_2_AWQOS(3 downto 0),
      FPD_CCI_NOC_2_awready => versal_cips_0_FPD_CCI_NOC_2_AWREADY(0),
      FPD_CCI_NOC_2_awsize(2 downto 0) => versal_cips_0_FPD_CCI_NOC_2_AWSIZE(2 downto 0),
      FPD_CCI_NOC_2_awuser(17 downto 0) => versal_cips_0_FPD_CCI_NOC_2_AWUSER(17 downto 0),
      FPD_CCI_NOC_2_awvalid => versal_cips_0_FPD_CCI_NOC_2_AWVALID,
      FPD_CCI_NOC_2_bid(15 downto 0) => versal_cips_0_FPD_CCI_NOC_2_BID(15 downto 0),
      FPD_CCI_NOC_2_bready => versal_cips_0_FPD_CCI_NOC_2_BREADY,
      FPD_CCI_NOC_2_bresp(1 downto 0) => versal_cips_0_FPD_CCI_NOC_2_BRESP(1 downto 0),
      FPD_CCI_NOC_2_bvalid => versal_cips_0_FPD_CCI_NOC_2_BVALID(0),
      FPD_CCI_NOC_2_rdata(127 downto 0) => versal_cips_0_FPD_CCI_NOC_2_RDATA(127 downto 0),
      FPD_CCI_NOC_2_rid(15 downto 0) => versal_cips_0_FPD_CCI_NOC_2_RID(15 downto 0),
      FPD_CCI_NOC_2_rlast => versal_cips_0_FPD_CCI_NOC_2_RLAST(0),
      FPD_CCI_NOC_2_rready => versal_cips_0_FPD_CCI_NOC_2_RREADY,
      FPD_CCI_NOC_2_rresp(1 downto 0) => versal_cips_0_FPD_CCI_NOC_2_RRESP(1 downto 0),
      FPD_CCI_NOC_2_rvalid => versal_cips_0_FPD_CCI_NOC_2_RVALID(0),
      FPD_CCI_NOC_2_wdata(127 downto 0) => versal_cips_0_FPD_CCI_NOC_2_WDATA(127 downto 0),
      FPD_CCI_NOC_2_wlast => versal_cips_0_FPD_CCI_NOC_2_WLAST,
      FPD_CCI_NOC_2_wready => versal_cips_0_FPD_CCI_NOC_2_WREADY(0),
      FPD_CCI_NOC_2_wstrb(15 downto 0) => versal_cips_0_FPD_CCI_NOC_2_WSTRB(15 downto 0),
      FPD_CCI_NOC_2_wuser(16 downto 0) => versal_cips_0_FPD_CCI_NOC_2_WUSER(16 downto 0),
      FPD_CCI_NOC_2_wvalid => versal_cips_0_FPD_CCI_NOC_2_WVALID,
      FPD_CCI_NOC_3_araddr(63 downto 0) => versal_cips_0_FPD_CCI_NOC_3_ARADDR(63 downto 0),
      FPD_CCI_NOC_3_arburst(1 downto 0) => versal_cips_0_FPD_CCI_NOC_3_ARBURST(1 downto 0),
      FPD_CCI_NOC_3_arcache(3 downto 0) => versal_cips_0_FPD_CCI_NOC_3_ARCACHE(3 downto 0),
      FPD_CCI_NOC_3_arid(15 downto 0) => versal_cips_0_FPD_CCI_NOC_3_ARID(15 downto 0),
      FPD_CCI_NOC_3_arlen(7 downto 0) => versal_cips_0_FPD_CCI_NOC_3_ARLEN(7 downto 0),
      FPD_CCI_NOC_3_arlock => versal_cips_0_FPD_CCI_NOC_3_ARLOCK,
      FPD_CCI_NOC_3_arprot(2 downto 0) => versal_cips_0_FPD_CCI_NOC_3_ARPROT(2 downto 0),
      FPD_CCI_NOC_3_arqos(3 downto 0) => versal_cips_0_FPD_CCI_NOC_3_ARQOS(3 downto 0),
      FPD_CCI_NOC_3_arready => versal_cips_0_FPD_CCI_NOC_3_ARREADY(0),
      FPD_CCI_NOC_3_arsize(2 downto 0) => versal_cips_0_FPD_CCI_NOC_3_ARSIZE(2 downto 0),
      FPD_CCI_NOC_3_aruser(17 downto 0) => versal_cips_0_FPD_CCI_NOC_3_ARUSER(17 downto 0),
      FPD_CCI_NOC_3_arvalid => versal_cips_0_FPD_CCI_NOC_3_ARVALID,
      FPD_CCI_NOC_3_awaddr(63 downto 0) => versal_cips_0_FPD_CCI_NOC_3_AWADDR(63 downto 0),
      FPD_CCI_NOC_3_awburst(1 downto 0) => versal_cips_0_FPD_CCI_NOC_3_AWBURST(1 downto 0),
      FPD_CCI_NOC_3_awcache(3 downto 0) => versal_cips_0_FPD_CCI_NOC_3_AWCACHE(3 downto 0),
      FPD_CCI_NOC_3_awid(15 downto 0) => versal_cips_0_FPD_CCI_NOC_3_AWID(15 downto 0),
      FPD_CCI_NOC_3_awlen(7 downto 0) => versal_cips_0_FPD_CCI_NOC_3_AWLEN(7 downto 0),
      FPD_CCI_NOC_3_awlock => versal_cips_0_FPD_CCI_NOC_3_AWLOCK,
      FPD_CCI_NOC_3_awprot(2 downto 0) => versal_cips_0_FPD_CCI_NOC_3_AWPROT(2 downto 0),
      FPD_CCI_NOC_3_awqos(3 downto 0) => versal_cips_0_FPD_CCI_NOC_3_AWQOS(3 downto 0),
      FPD_CCI_NOC_3_awready => versal_cips_0_FPD_CCI_NOC_3_AWREADY(0),
      FPD_CCI_NOC_3_awsize(2 downto 0) => versal_cips_0_FPD_CCI_NOC_3_AWSIZE(2 downto 0),
      FPD_CCI_NOC_3_awuser(17 downto 0) => versal_cips_0_FPD_CCI_NOC_3_AWUSER(17 downto 0),
      FPD_CCI_NOC_3_awvalid => versal_cips_0_FPD_CCI_NOC_3_AWVALID,
      FPD_CCI_NOC_3_bid(15 downto 0) => versal_cips_0_FPD_CCI_NOC_3_BID(15 downto 0),
      FPD_CCI_NOC_3_bready => versal_cips_0_FPD_CCI_NOC_3_BREADY,
      FPD_CCI_NOC_3_bresp(1 downto 0) => versal_cips_0_FPD_CCI_NOC_3_BRESP(1 downto 0),
      FPD_CCI_NOC_3_bvalid => versal_cips_0_FPD_CCI_NOC_3_BVALID(0),
      FPD_CCI_NOC_3_rdata(127 downto 0) => versal_cips_0_FPD_CCI_NOC_3_RDATA(127 downto 0),
      FPD_CCI_NOC_3_rid(15 downto 0) => versal_cips_0_FPD_CCI_NOC_3_RID(15 downto 0),
      FPD_CCI_NOC_3_rlast => versal_cips_0_FPD_CCI_NOC_3_RLAST(0),
      FPD_CCI_NOC_3_rready => versal_cips_0_FPD_CCI_NOC_3_RREADY,
      FPD_CCI_NOC_3_rresp(1 downto 0) => versal_cips_0_FPD_CCI_NOC_3_RRESP(1 downto 0),
      FPD_CCI_NOC_3_rvalid => versal_cips_0_FPD_CCI_NOC_3_RVALID(0),
      FPD_CCI_NOC_3_wdata(127 downto 0) => versal_cips_0_FPD_CCI_NOC_3_WDATA(127 downto 0),
      FPD_CCI_NOC_3_wlast => versal_cips_0_FPD_CCI_NOC_3_WLAST,
      FPD_CCI_NOC_3_wready => versal_cips_0_FPD_CCI_NOC_3_WREADY(0),
      FPD_CCI_NOC_3_wstrb(15 downto 0) => versal_cips_0_FPD_CCI_NOC_3_WSTRB(15 downto 0),
      FPD_CCI_NOC_3_wuser(16 downto 0) => versal_cips_0_FPD_CCI_NOC_3_WUSER(16 downto 0),
      FPD_CCI_NOC_3_wvalid => versal_cips_0_FPD_CCI_NOC_3_WVALID,
      LPD_AXI_NOC_0_araddr(63 downto 0) => versal_cips_0_LPD_AXI_NOC_0_ARADDR(63 downto 0),
      LPD_AXI_NOC_0_arburst(1 downto 0) => versal_cips_0_LPD_AXI_NOC_0_ARBURST(1 downto 0),
      LPD_AXI_NOC_0_arcache(3 downto 0) => versal_cips_0_LPD_AXI_NOC_0_ARCACHE(3 downto 0),
      LPD_AXI_NOC_0_arid(15 downto 0) => versal_cips_0_LPD_AXI_NOC_0_ARID(15 downto 0),
      LPD_AXI_NOC_0_arlen(7 downto 0) => versal_cips_0_LPD_AXI_NOC_0_ARLEN(7 downto 0),
      LPD_AXI_NOC_0_arlock => versal_cips_0_LPD_AXI_NOC_0_ARLOCK,
      LPD_AXI_NOC_0_arprot(2 downto 0) => versal_cips_0_LPD_AXI_NOC_0_ARPROT(2 downto 0),
      LPD_AXI_NOC_0_arqos(3 downto 0) => versal_cips_0_LPD_AXI_NOC_0_ARQOS(3 downto 0),
      LPD_AXI_NOC_0_arready => versal_cips_0_LPD_AXI_NOC_0_ARREADY(0),
      LPD_AXI_NOC_0_arsize(2 downto 0) => versal_cips_0_LPD_AXI_NOC_0_ARSIZE(2 downto 0),
      LPD_AXI_NOC_0_aruser(17 downto 0) => versal_cips_0_LPD_AXI_NOC_0_ARUSER(17 downto 0),
      LPD_AXI_NOC_0_arvalid => versal_cips_0_LPD_AXI_NOC_0_ARVALID,
      LPD_AXI_NOC_0_awaddr(63 downto 0) => versal_cips_0_LPD_AXI_NOC_0_AWADDR(63 downto 0),
      LPD_AXI_NOC_0_awburst(1 downto 0) => versal_cips_0_LPD_AXI_NOC_0_AWBURST(1 downto 0),
      LPD_AXI_NOC_0_awcache(3 downto 0) => versal_cips_0_LPD_AXI_NOC_0_AWCACHE(3 downto 0),
      LPD_AXI_NOC_0_awid(15 downto 0) => versal_cips_0_LPD_AXI_NOC_0_AWID(15 downto 0),
      LPD_AXI_NOC_0_awlen(7 downto 0) => versal_cips_0_LPD_AXI_NOC_0_AWLEN(7 downto 0),
      LPD_AXI_NOC_0_awlock => versal_cips_0_LPD_AXI_NOC_0_AWLOCK,
      LPD_AXI_NOC_0_awprot(2 downto 0) => versal_cips_0_LPD_AXI_NOC_0_AWPROT(2 downto 0),
      LPD_AXI_NOC_0_awqos(3 downto 0) => versal_cips_0_LPD_AXI_NOC_0_AWQOS(3 downto 0),
      LPD_AXI_NOC_0_awready => versal_cips_0_LPD_AXI_NOC_0_AWREADY(0),
      LPD_AXI_NOC_0_awsize(2 downto 0) => versal_cips_0_LPD_AXI_NOC_0_AWSIZE(2 downto 0),
      LPD_AXI_NOC_0_awuser(17 downto 0) => versal_cips_0_LPD_AXI_NOC_0_AWUSER(17 downto 0),
      LPD_AXI_NOC_0_awvalid => versal_cips_0_LPD_AXI_NOC_0_AWVALID,
      LPD_AXI_NOC_0_bid(15 downto 0) => versal_cips_0_LPD_AXI_NOC_0_BID(15 downto 0),
      LPD_AXI_NOC_0_bready => versal_cips_0_LPD_AXI_NOC_0_BREADY,
      LPD_AXI_NOC_0_bresp(1 downto 0) => versal_cips_0_LPD_AXI_NOC_0_BRESP(1 downto 0),
      LPD_AXI_NOC_0_bvalid => versal_cips_0_LPD_AXI_NOC_0_BVALID(0),
      LPD_AXI_NOC_0_rdata(127 downto 0) => versal_cips_0_LPD_AXI_NOC_0_RDATA(127 downto 0),
      LPD_AXI_NOC_0_rid(15 downto 0) => versal_cips_0_LPD_AXI_NOC_0_RID(15 downto 0),
      LPD_AXI_NOC_0_rlast => versal_cips_0_LPD_AXI_NOC_0_RLAST(0),
      LPD_AXI_NOC_0_rready => versal_cips_0_LPD_AXI_NOC_0_RREADY,
      LPD_AXI_NOC_0_rresp(1 downto 0) => versal_cips_0_LPD_AXI_NOC_0_RRESP(1 downto 0),
      LPD_AXI_NOC_0_rvalid => versal_cips_0_LPD_AXI_NOC_0_RVALID(0),
      LPD_AXI_NOC_0_wdata(127 downto 0) => versal_cips_0_LPD_AXI_NOC_0_WDATA(127 downto 0),
      LPD_AXI_NOC_0_wlast => versal_cips_0_LPD_AXI_NOC_0_WLAST,
      LPD_AXI_NOC_0_wready => versal_cips_0_LPD_AXI_NOC_0_WREADY(0),
      LPD_AXI_NOC_0_wstrb(15 downto 0) => versal_cips_0_LPD_AXI_NOC_0_WSTRB(15 downto 0),
      LPD_AXI_NOC_0_wvalid => versal_cips_0_LPD_AXI_NOC_0_WVALID,
      LPD_GPIO_i(31 downto 0) => B"00000000000000000000000000000000",
      LPD_GPIO_o(31 downto 0) => NLW_versal_cips_0_LPD_GPIO_o_UNCONNECTED(31 downto 0),
      LPD_GPIO_t(31 downto 0) => NLW_versal_cips_0_LPD_GPIO_t_UNCONNECTED(31 downto 0),
      PMC_NOC_AXI_0_araddr(63 downto 0) => versal_cips_0_PMC_NOC_AXI_0_ARADDR(63 downto 0),
      PMC_NOC_AXI_0_arburst(1 downto 0) => versal_cips_0_PMC_NOC_AXI_0_ARBURST(1 downto 0),
      PMC_NOC_AXI_0_arcache(3 downto 0) => versal_cips_0_PMC_NOC_AXI_0_ARCACHE(3 downto 0),
      PMC_NOC_AXI_0_arid(15 downto 0) => versal_cips_0_PMC_NOC_AXI_0_ARID(15 downto 0),
      PMC_NOC_AXI_0_arlen(7 downto 0) => versal_cips_0_PMC_NOC_AXI_0_ARLEN(7 downto 0),
      PMC_NOC_AXI_0_arlock => versal_cips_0_PMC_NOC_AXI_0_ARLOCK,
      PMC_NOC_AXI_0_arprot(2 downto 0) => versal_cips_0_PMC_NOC_AXI_0_ARPROT(2 downto 0),
      PMC_NOC_AXI_0_arqos(3 downto 0) => versal_cips_0_PMC_NOC_AXI_0_ARQOS(3 downto 0),
      PMC_NOC_AXI_0_arready => versal_cips_0_PMC_NOC_AXI_0_ARREADY(0),
      PMC_NOC_AXI_0_arregion(3 downto 0) => versal_cips_0_PMC_NOC_AXI_0_ARREGION(3 downto 0),
      PMC_NOC_AXI_0_arsize(2 downto 0) => versal_cips_0_PMC_NOC_AXI_0_ARSIZE(2 downto 0),
      PMC_NOC_AXI_0_aruser(17 downto 0) => versal_cips_0_PMC_NOC_AXI_0_ARUSER(17 downto 0),
      PMC_NOC_AXI_0_arvalid => versal_cips_0_PMC_NOC_AXI_0_ARVALID,
      PMC_NOC_AXI_0_awaddr(63 downto 0) => versal_cips_0_PMC_NOC_AXI_0_AWADDR(63 downto 0),
      PMC_NOC_AXI_0_awburst(1 downto 0) => versal_cips_0_PMC_NOC_AXI_0_AWBURST(1 downto 0),
      PMC_NOC_AXI_0_awcache(3 downto 0) => versal_cips_0_PMC_NOC_AXI_0_AWCACHE(3 downto 0),
      PMC_NOC_AXI_0_awid(15 downto 0) => versal_cips_0_PMC_NOC_AXI_0_AWID(15 downto 0),
      PMC_NOC_AXI_0_awlen(7 downto 0) => versal_cips_0_PMC_NOC_AXI_0_AWLEN(7 downto 0),
      PMC_NOC_AXI_0_awlock => versal_cips_0_PMC_NOC_AXI_0_AWLOCK,
      PMC_NOC_AXI_0_awprot(2 downto 0) => versal_cips_0_PMC_NOC_AXI_0_AWPROT(2 downto 0),
      PMC_NOC_AXI_0_awqos(3 downto 0) => versal_cips_0_PMC_NOC_AXI_0_AWQOS(3 downto 0),
      PMC_NOC_AXI_0_awready => versal_cips_0_PMC_NOC_AXI_0_AWREADY(0),
      PMC_NOC_AXI_0_awregion(3 downto 0) => versal_cips_0_PMC_NOC_AXI_0_AWREGION(3 downto 0),
      PMC_NOC_AXI_0_awsize(2 downto 0) => versal_cips_0_PMC_NOC_AXI_0_AWSIZE(2 downto 0),
      PMC_NOC_AXI_0_awuser(17 downto 0) => versal_cips_0_PMC_NOC_AXI_0_AWUSER(17 downto 0),
      PMC_NOC_AXI_0_awvalid => versal_cips_0_PMC_NOC_AXI_0_AWVALID,
      PMC_NOC_AXI_0_bid(15 downto 0) => versal_cips_0_PMC_NOC_AXI_0_BID(15 downto 0),
      PMC_NOC_AXI_0_bready => versal_cips_0_PMC_NOC_AXI_0_BREADY,
      PMC_NOC_AXI_0_bresp(1 downto 0) => versal_cips_0_PMC_NOC_AXI_0_BRESP(1 downto 0),
      PMC_NOC_AXI_0_buser(15 downto 0) => versal_cips_0_PMC_NOC_AXI_0_BUSER(15 downto 0),
      PMC_NOC_AXI_0_bvalid => versal_cips_0_PMC_NOC_AXI_0_BVALID(0),
      PMC_NOC_AXI_0_rdata(127 downto 0) => versal_cips_0_PMC_NOC_AXI_0_RDATA(127 downto 0),
      PMC_NOC_AXI_0_rid(15 downto 0) => versal_cips_0_PMC_NOC_AXI_0_RID(15 downto 0),
      PMC_NOC_AXI_0_rlast => versal_cips_0_PMC_NOC_AXI_0_RLAST(0),
      PMC_NOC_AXI_0_rready => versal_cips_0_PMC_NOC_AXI_0_RREADY,
      PMC_NOC_AXI_0_rresp(1 downto 0) => versal_cips_0_PMC_NOC_AXI_0_RRESP(1 downto 0),
      PMC_NOC_AXI_0_ruser(16 downto 0) => versal_cips_0_PMC_NOC_AXI_0_RUSER(16 downto 0),
      PMC_NOC_AXI_0_rvalid => versal_cips_0_PMC_NOC_AXI_0_RVALID(0),
      PMC_NOC_AXI_0_wdata(127 downto 0) => versal_cips_0_PMC_NOC_AXI_0_WDATA(127 downto 0),
      PMC_NOC_AXI_0_wid(15 downto 0) => NLW_versal_cips_0_PMC_NOC_AXI_0_wid_UNCONNECTED(15 downto 0),
      PMC_NOC_AXI_0_wlast => versal_cips_0_PMC_NOC_AXI_0_WLAST,
      PMC_NOC_AXI_0_wready => versal_cips_0_PMC_NOC_AXI_0_WREADY(0),
      PMC_NOC_AXI_0_wstrb(15 downto 0) => versal_cips_0_PMC_NOC_AXI_0_WSTRB(15 downto 0),
      PMC_NOC_AXI_0_wuser(16 downto 0) => versal_cips_0_PMC_NOC_AXI_0_WUSER(16 downto 0),
      PMC_NOC_AXI_0_wvalid => versal_cips_0_PMC_NOC_AXI_0_WVALID,
      fpd_cci_noc_axi0_clk => versal_cips_0_fpd_cci_noc_axi0_clk,
      fpd_cci_noc_axi1_clk => versal_cips_0_fpd_cci_noc_axi1_clk,
      fpd_cci_noc_axi2_clk => versal_cips_0_fpd_cci_noc_axi2_clk,
      fpd_cci_noc_axi3_clk => versal_cips_0_fpd_cci_noc_axi3_clk,
      gem0_tsu_timer_cnt(93 downto 0) => NLW_versal_cips_0_gem0_tsu_timer_cnt_UNCONNECTED(93 downto 0),
      lpd_axi_noc_clk => versal_cips_0_lpd_axi_noc_clk,
      pl0_ref_clk => NLW_versal_cips_0_pl0_ref_clk_UNCONNECTED,
      pl0_resetn => NLW_versal_cips_0_pl0_resetn_UNCONNECTED,
      pmc_axi_noc_axi0_clk => versal_cips_0_pmc_axi_noc_axi0_clk
    );
end STRUCTURE;
