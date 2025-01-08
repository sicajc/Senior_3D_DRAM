# TCL File Generated by Component Editor 10.1sp1
# Thu May 31 00:00:48 CST 2012
# DO NOT MODIFY


# +-----------------------------------
# | 
# | MCB_AVL_IP_TOP "SDRC_LITE_AVL_CORE" v0.2.6
# | null 2012.05.31.00:00:48
# | 
# | 
# | H:/TMP/MCB_AVL_BFM/sopc/ip/MCB_AVL_IP_TOP/MCB_AVL_IP_TOP.v
# | 
# |    ./MCB_AVL_IP_TOP.v syn, sim
# |    ./MCB_AVL_RAM14x4.v syn, sim
# |    ./MCB_AVL_WRAP.v syn, sim
# |    ./MCB_CMD_CTRL.v syn, sim
# |    ./MCB_CMD_FSM.v syn, sim
# |    ./MCB_CTRL.v syn, sim
# |    ./MCB_DAT_CTRL.v syn, sim
# |    ./MCB_DAT_FF.v syn, sim
# |    ./MCB_DAT_FSM.v syn, sim
# |    ./MCB_INI_CTRL.v syn, sim
# |    ./MCB_INI_FSM.v syn, sim
# |    ./MCB_REF_CTRL.v syn, sim
# |    ./MCB_SIG_FF.v syn, sim
# |    ./MCB_TOP.v syn, sim
# | 
# +-----------------------------------

# +-----------------------------------
# | request TCL package from ACDS 10.1
# | 
package require -exact sopc 10.1
# | 
# +-----------------------------------

# +-----------------------------------
# | module MCB_AVL_IP_TOP
# | 
set_module_property NAME MCB_AVL_IP_TOP
set_module_property VERSION 0.2.6
set_module_property INTERNAL false
set_module_property OPAQUE_ADDRESS_MAP true
set_module_property DISPLAY_NAME SDRC_LITE_AVL_CORE
set_module_property TOP_LEVEL_HDL_FILE MCB_AVL_IP_TOP.v
set_module_property TOP_LEVEL_HDL_MODULE MCB_AVL_IP_TOP
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_property ANALYZE_HDL TRUE
# | 
# +-----------------------------------

# +-----------------------------------
# | files
# | 
add_file MCB_AVL_IP_TOP.v {SYNTHESIS SIMULATION}
add_file MCB_AVL_RAM14x4.v {SYNTHESIS SIMULATION}
add_file MCB_AVL_WRAP.v {SYNTHESIS SIMULATION}
add_file MCB_CMD_CTRL.v {SYNTHESIS SIMULATION}
add_file MCB_CMD_FSM.v {SYNTHESIS SIMULATION}
add_file MCB_CTRL.v {SYNTHESIS SIMULATION}
add_file MCB_DAT_CTRL.v {SYNTHESIS SIMULATION}
add_file MCB_DAT_FF.v {SYNTHESIS SIMULATION}
add_file MCB_DAT_FSM.v {SYNTHESIS SIMULATION}
add_file MCB_INI_CTRL.v {SYNTHESIS SIMULATION}
add_file MCB_INI_FSM.v {SYNTHESIS SIMULATION}
add_file MCB_REF_CTRL.v {SYNTHESIS SIMULATION}
add_file MCB_SIG_FF.v {SYNTHESIS SIMULATION}
add_file MCB_TOP.v {SYNTHESIS SIMULATION}
# | 
# +-----------------------------------

# +-----------------------------------
# | parameters
# | 
add_parameter SDR_A_W INTEGER 12
set_parameter_property SDR_A_W DEFAULT_VALUE 12
set_parameter_property SDR_A_W DISPLAY_NAME SDR_A_W
set_parameter_property SDR_A_W TYPE INTEGER
set_parameter_property SDR_A_W UNITS None
set_parameter_property SDR_A_W AFFECTS_GENERATION false
set_parameter_property SDR_A_W HDL_PARAMETER true
add_parameter SDR_B_W INTEGER 2
set_parameter_property SDR_B_W DEFAULT_VALUE 2
set_parameter_property SDR_B_W DISPLAY_NAME SDR_B_W
set_parameter_property SDR_B_W TYPE INTEGER
set_parameter_property SDR_B_W UNITS None
set_parameter_property SDR_B_W AFFECTS_GENERATION false
set_parameter_property SDR_B_W HDL_PARAMETER true
add_parameter SDR_R_W INTEGER 12
set_parameter_property SDR_R_W DEFAULT_VALUE 12
set_parameter_property SDR_R_W DISPLAY_NAME SDR_R_W
set_parameter_property SDR_R_W TYPE INTEGER
set_parameter_property SDR_R_W UNITS None
set_parameter_property SDR_R_W AFFECTS_GENERATION false
set_parameter_property SDR_R_W HDL_PARAMETER true
add_parameter SDR_C_W INTEGER 8
set_parameter_property SDR_C_W DEFAULT_VALUE 8
set_parameter_property SDR_C_W DISPLAY_NAME SDR_C_W
set_parameter_property SDR_C_W TYPE INTEGER
set_parameter_property SDR_C_W UNITS None
set_parameter_property SDR_C_W AFFECTS_GENERATION false
set_parameter_property SDR_C_W HDL_PARAMETER true
add_parameter SDR_D_W INTEGER 16
set_parameter_property SDR_D_W DEFAULT_VALUE 16
set_parameter_property SDR_D_W DISPLAY_NAME SDR_D_W
set_parameter_property SDR_D_W TYPE INTEGER
set_parameter_property SDR_D_W UNITS None
set_parameter_property SDR_D_W AFFECTS_GENERATION false
set_parameter_property SDR_D_W HDL_PARAMETER true
add_parameter SDR_M_W INTEGER 2
set_parameter_property SDR_M_W DEFAULT_VALUE 2
set_parameter_property SDR_M_W DISPLAY_NAME SDR_M_W
set_parameter_property SDR_M_W TYPE INTEGER
set_parameter_property SDR_M_W UNITS None
set_parameter_property SDR_M_W AFFECTS_GENERATION false
set_parameter_property SDR_M_W HDL_PARAMETER true
add_parameter MCB_tCK INTEGER 10
set_parameter_property MCB_tCK DEFAULT_VALUE 10
set_parameter_property MCB_tCK DISPLAY_NAME MCB_tCK
set_parameter_property MCB_tCK TYPE INTEGER
set_parameter_property MCB_tCK UNITS None
set_parameter_property MCB_tCK AFFECTS_GENERATION false
set_parameter_property MCB_tCK HDL_PARAMETER true
add_parameter tINIw INTEGER 200000
set_parameter_property tINIw DEFAULT_VALUE 200000
set_parameter_property tINIw DISPLAY_NAME tINIw
set_parameter_property tINIw TYPE INTEGER
set_parameter_property tINIw UNITS None
set_parameter_property tINIw AFFECTS_GENERATION false
set_parameter_property tINIw HDL_PARAMETER true
add_parameter IrefN INTEGER 8
set_parameter_property IrefN DEFAULT_VALUE 8
set_parameter_property IrefN DISPLAY_NAME IrefN
set_parameter_property IrefN TYPE INTEGER
set_parameter_property IrefN UNITS None
set_parameter_property IrefN AFFECTS_GENERATION false
set_parameter_property IrefN HDL_PARAMETER true
add_parameter tRP INTEGER 20
set_parameter_property tRP DEFAULT_VALUE 20
set_parameter_property tRP DISPLAY_NAME tRP
set_parameter_property tRP TYPE INTEGER
set_parameter_property tRP UNITS None
set_parameter_property tRP AFFECTS_GENERATION false
set_parameter_property tRP HDL_PARAMETER true
add_parameter tRFC INTEGER 70
set_parameter_property tRFC DEFAULT_VALUE 70
set_parameter_property tRFC DISPLAY_NAME tRFC
set_parameter_property tRFC TYPE INTEGER
set_parameter_property tRFC UNITS None
set_parameter_property tRFC AFFECTS_GENERATION false
set_parameter_property tRFC HDL_PARAMETER true
add_parameter tRCD INTEGER 20
set_parameter_property tRCD DEFAULT_VALUE 20
set_parameter_property tRCD DISPLAY_NAME tRCD
set_parameter_property tRCD TYPE INTEGER
set_parameter_property tRCD UNITS None
set_parameter_property tRCD AFFECTS_GENERATION false
set_parameter_property tRCD HDL_PARAMETER true
add_parameter AVL_A_W INTEGER 22
set_parameter_property AVL_A_W DEFAULT_VALUE 22
set_parameter_property AVL_A_W DISPLAY_NAME AVL_A_W
set_parameter_property AVL_A_W TYPE INTEGER
set_parameter_property AVL_A_W UNITS None
set_parameter_property AVL_A_W AFFECTS_GENERATION false
set_parameter_property AVL_A_W HDL_PARAMETER true
# | 
# +-----------------------------------

# +-----------------------------------
# | display items
# | 
# | 
# +-----------------------------------

# +-----------------------------------
# | connection point clockreset
# | 
add_interface clockreset clock end
set_interface_property clockreset clockRate 0

set_interface_property clockreset ENABLED true

add_interface_port clockreset csi_clockreset_clk clk Input 1
add_interface_port clockreset csi_clockreset_reset_n reset_n Input 1
# | 
# +-----------------------------------

# +-----------------------------------
# | connection point s1
# | 
add_interface s1 avalon end
set_interface_property s1 addressAlignment DYNAMIC
set_interface_property s1 addressUnits WORDS
set_interface_property s1 associatedClock clockreset
set_interface_property s1 burstOnBurstBoundariesOnly false
set_interface_property s1 explicitAddressSpan 0
set_interface_property s1 holdTime 0
set_interface_property s1 isMemoryDevice false
set_interface_property s1 isNonVolatileStorage false
set_interface_property s1 linewrapBursts false
set_interface_property s1 maximumPendingReadTransactions 1
set_interface_property s1 printableDevice false
set_interface_property s1 readLatency 0
set_interface_property s1 readWaitTime 1
set_interface_property s1 setupTime 0
set_interface_property s1 timingUnits Cycles
set_interface_property s1 writeWaitTime 0

set_interface_property s1 ENABLED true

add_interface_port s1 avs_s1_address address Input AVL_A_W
add_interface_port s1 avs_s1_read read Input 1
add_interface_port s1 avs_s1_write write Input 1
add_interface_port s1 avs_s1_beginbursttransfer beginbursttransfer Input 1
add_interface_port s1 avs_s1_waitrequest waitrequest Output 1
add_interface_port s1 avs_s1_burstcount burstcount Input 4
add_interface_port s1 avs_s1_readdatavalid readdatavalid Output 1
add_interface_port s1 avs_s1_readdata readdata Output "(non-static) - (0) + 1"
add_interface_port s1 avs_s1_byteenable byteenable Input "(non-static) - (0) + 1"
add_interface_port s1 avs_s1_writedata writedata Input "(non-static) - (0) + 1"
# | 
# +-----------------------------------

# +-----------------------------------
# | connection point conduit_end_0
# | 
add_interface conduit_end_0 conduit end

set_interface_property conduit_end_0 ENABLED true

add_interface_port conduit_end_0 coe_sdr_cke export Output 1
add_interface_port conduit_end_0 coe_sdr_cs_n export Output 1
add_interface_port conduit_end_0 coe_sdr_ras_n export Output 1
add_interface_port conduit_end_0 coe_sdr_cas_n export Output 1
add_interface_port conduit_end_0 coe_sdr_we_n export Output 1
add_interface_port conduit_end_0 coe_sdr_dqm export Output SDR_M_W
add_interface_port conduit_end_0 coe_sdr_ba export Output SDR_B_W
add_interface_port conduit_end_0 coe_sdr_addr export Output SDR_A_W
add_interface_port conduit_end_0 coe_dbf_dq_ie export Output 1
add_interface_port conduit_end_0 coe_dbf_dq_i export Input SDR_D_W
add_interface_port conduit_end_0 coe_dbf_dq_oe export Output 1
add_interface_port conduit_end_0 coe_dbf_dq_o export Output SDR_D_W
# | 
# +-----------------------------------
