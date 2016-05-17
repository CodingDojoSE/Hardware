
# (C) 2001-2016 Altera Corporation. All rights reserved.
# Your use of Altera Corporation's design tools, logic functions and 
# other software and tools, and its AMPP partner logic functions, and 
# any output files any of the foregoing (including device programming 
# or simulation files), and any associated documentation or information 
# are expressly subject to the terms and conditions of the Altera 
# Program License Subscription Agreement, Altera MegaCore Function 
# License Agreement, or other applicable license agreement, including, 
# without limitation, that your use is for the sole purpose of 
# programming logic devices manufactured by Altera and sold by Altera 
# or its authorized distributors. Please refer to the applicable 
# agreement for further details.

# ACDS 13.0sp1 232 linux 2016.05.10.19:15:52

# ----------------------------------------
# vcsmx - auto-generated simulation script

# ----------------------------------------
# initialize variables
TOP_LEVEL_NAME="blinker"
QSYS_SIMDIR="./../../"
QUARTUS_INSTALL_DIR="/usr/local/altera/13.0sp1/quartus/"
SKIP_FILE_COPY=0
SKIP_DEV_COM=0
SKIP_COM=0
SKIP_ELAB=0
SKIP_SIM=0
USER_DEFINED_ELAB_OPTIONS=""
USER_DEFINED_SIM_OPTIONS="+vcs+finish+100"

# ----------------------------------------
# overwrite variables - DO NOT MODIFY!
# This block evaluates each command line argument, typically used for 
# overwriting variables. An example usage:
#   sh <simulator>_setup.sh SKIP_ELAB=1 SKIP_SIM=1
for expression in "$@"; do
  eval $expression
  if [ $? -ne 0 ]; then
    echo "Error: This command line argument, \"$expression\", is/has an invalid expression." >&2
    exit $?
  fi
done

# ----------------------------------------
# create compilation libraries
mkdir -p ./libraries/work/
mkdir -p ./libraries/irq_mapper/
mkdir -p ./libraries/rsp_xbar_mux_001/
mkdir -p ./libraries/rsp_xbar_mux/
mkdir -p ./libraries/rsp_xbar_demux_002/
mkdir -p ./libraries/cmd_xbar_mux/
mkdir -p ./libraries/cmd_xbar_demux_001/
mkdir -p ./libraries/cmd_xbar_demux/
mkdir -p ./libraries/rst_controller/
mkdir -p ./libraries/id_router_002/
mkdir -p ./libraries/id_router/
mkdir -p ./libraries/addr_router_001/
mkdir -p ./libraries/addr_router/
mkdir -p ./libraries/nios2_proc_jtag_debug_module_translator_avalon_universal_slave_0_agent_rsp_fifo/
mkdir -p ./libraries/nios2_proc_jtag_debug_module_translator_avalon_universal_slave_0_agent/
mkdir -p ./libraries/nios2_proc_instruction_master_translator_avalon_universal_master_0_agent/
mkdir -p ./libraries/nios2_proc_jtag_debug_module_translator/
mkdir -p ./libraries/nios2_proc_instruction_master_translator/
mkdir -p ./libraries/sysid_1337/
mkdir -p ./libraries/led/
mkdir -p ./libraries/switcher/
mkdir -p ./libraries/onchip_memory/
mkdir -p ./libraries/nios2_proc/
mkdir -p ./libraries/altera_ver/
mkdir -p ./libraries/lpm_ver/
mkdir -p ./libraries/sgate_ver/
mkdir -p ./libraries/altera_mf_ver/
mkdir -p ./libraries/altera_lnsim_ver/
mkdir -p ./libraries/cycloneiv_hssi_ver/
mkdir -p ./libraries/cycloneiv_pcie_hip_ver/
mkdir -p ./libraries/cycloneiv_ver/
mkdir -p ./libraries/altera/
mkdir -p ./libraries/lpm/
mkdir -p ./libraries/sgate/
mkdir -p ./libraries/altera_mf/
mkdir -p ./libraries/altera_lnsim/
mkdir -p ./libraries/cycloneiv_hssi/
mkdir -p ./libraries/cycloneiv_pcie_hip/
mkdir -p ./libraries/cycloneiv/

# ----------------------------------------
# copy RAM/ROM files to simulation directory
if [ $SKIP_FILE_COPY -eq 0 ]; then
  cp -f $QSYS_SIMDIR/submodules/blinker_onchip_memory.hex ./
  cp -f $QSYS_SIMDIR/submodules/blinker_nios2_proc_ociram_default_contents.mif ./
  cp -f $QSYS_SIMDIR/submodules/blinker_nios2_proc_rf_ram_a.mif ./
  cp -f $QSYS_SIMDIR/submodules/blinker_nios2_proc_rf_ram_a.hex ./
  cp -f $QSYS_SIMDIR/submodules/blinker_nios2_proc_rf_ram_b.mif ./
  cp -f $QSYS_SIMDIR/submodules/blinker_nios2_proc_ociram_default_contents.dat ./
  cp -f $QSYS_SIMDIR/submodules/blinker_nios2_proc_rf_ram_b.hex ./
  cp -f $QSYS_SIMDIR/submodules/blinker_nios2_proc_rf_ram_b.dat ./
  cp -f $QSYS_SIMDIR/submodules/blinker_nios2_proc_rf_ram_a.dat ./
  cp -f $QSYS_SIMDIR/submodules/blinker_nios2_proc_ociram_default_contents.hex ./
fi

# ----------------------------------------
# compile device library files
if [ $SKIP_DEV_COM -eq 0 ]; then
  vlogan +v2k           "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives.v"               -work altera_ver            
  vlogan +v2k           "$QUARTUS_INSTALL_DIR/eda/sim_lib/220model.v"                        -work lpm_ver               
  vlogan +v2k           "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate.v"                           -work sgate_ver             
  vlogan +v2k           "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf.v"                       -work altera_mf_ver         
  vlogan +v2k -sverilog "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_lnsim.sv"                   -work altera_lnsim_ver      
  vlogan +v2k           "$QUARTUS_INSTALL_DIR/eda/sim_lib/cycloneiv_hssi_atoms.v"            -work cycloneiv_hssi_ver    
  vlogan +v2k           "$QUARTUS_INSTALL_DIR/eda/sim_lib/cycloneiv_pcie_hip_atoms.v"        -work cycloneiv_pcie_hip_ver
  vlogan +v2k           "$QUARTUS_INSTALL_DIR/eda/sim_lib/cycloneiv_atoms.v"                 -work cycloneiv_ver         
  vhdlan                "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_syn_attributes.vhd"         -work altera                
  vhdlan                "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_standard_functions.vhd"     -work altera                
  vhdlan                "$QUARTUS_INSTALL_DIR/eda/sim_lib/alt_dspbuilder_package.vhd"        -work altera                
  vhdlan                "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_europa_support_lib.vhd"     -work altera                
  vhdlan                "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives_components.vhd"  -work altera                
  vhdlan                "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives.vhd"             -work altera                
  vhdlan                "$QUARTUS_INSTALL_DIR/eda/sim_lib/220pack.vhd"                       -work lpm                   
  vhdlan                "$QUARTUS_INSTALL_DIR/eda/sim_lib/220model.vhd"                      -work lpm                   
  vhdlan                "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate_pack.vhd"                    -work sgate                 
  vhdlan                "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate.vhd"                         -work sgate                 
  vhdlan                "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf_components.vhd"          -work altera_mf             
  vhdlan                "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf.vhd"                     -work altera_mf             
  vhdlan                "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_lnsim_components.vhd"       -work altera_lnsim          
  vhdlan                "$QUARTUS_INSTALL_DIR/eda/sim_lib/cycloneiv_hssi_components.vhd"     -work cycloneiv_hssi        
  vhdlan                "$QUARTUS_INSTALL_DIR/eda/sim_lib/cycloneiv_hssi_atoms.vhd"          -work cycloneiv_hssi        
  vhdlan                "$QUARTUS_INSTALL_DIR/eda/sim_lib/cycloneiv_pcie_hip_components.vhd" -work cycloneiv_pcie_hip    
  vhdlan                "$QUARTUS_INSTALL_DIR/eda/sim_lib/cycloneiv_pcie_hip_atoms.vhd"      -work cycloneiv_pcie_hip    
  vhdlan                "$QUARTUS_INSTALL_DIR/eda/sim_lib/cycloneiv_atoms.vhd"               -work cycloneiv             
  vhdlan                "$QUARTUS_INSTALL_DIR/eda/sim_lib/cycloneiv_components.vhd"          -work cycloneiv             
fi

# ----------------------------------------
# compile design files in correct order
if [ $SKIP_COM -eq 0 ]; then
  vhdlan -xlrm          "$QSYS_SIMDIR/submodules/blinker_irq_mapper.vho"                                                                      -work irq_mapper                                                                     
  vhdlan -xlrm          "$QSYS_SIMDIR/submodules/blinker_rsp_xbar_mux_001.vho"                                                                -work rsp_xbar_mux_001                                                               
  vhdlan -xlrm          "$QSYS_SIMDIR/submodules/blinker_rsp_xbar_mux.vho"                                                                    -work rsp_xbar_mux                                                                   
  vhdlan -xlrm          "$QSYS_SIMDIR/submodules/blinker_rsp_xbar_demux_002.vho"                                                              -work rsp_xbar_demux_002                                                             
  vhdlan -xlrm          "$QSYS_SIMDIR/submodules/blinker_cmd_xbar_mux.vho"                                                                    -work cmd_xbar_mux                                                                   
  vhdlan -xlrm          "$QSYS_SIMDIR/submodules/blinker_cmd_xbar_demux_001.vho"                                                              -work cmd_xbar_demux_001                                                             
  vhdlan -xlrm          "$QSYS_SIMDIR/submodules/blinker_cmd_xbar_demux.vho"                                                                  -work cmd_xbar_demux                                                                 
  vlogan +v2k           "$QSYS_SIMDIR/submodules/synopsys/altera_reset_controller.v"                                                          -work rst_controller                                                                 
  vlogan +v2k           "$QSYS_SIMDIR/submodules/synopsys/altera_reset_synchronizer.v"                                                        -work rst_controller                                                                 
  vhdlan -xlrm          "$QSYS_SIMDIR/submodules/blinker_id_router_002.vho"                                                                   -work id_router_002                                                                  
  vhdlan -xlrm          "$QSYS_SIMDIR/submodules/blinker_id_router.vho"                                                                       -work id_router                                                                      
  vhdlan -xlrm          "$QSYS_SIMDIR/submodules/blinker_addr_router_001.vho"                                                                 -work addr_router_001                                                                
  vhdlan -xlrm          "$QSYS_SIMDIR/submodules/blinker_addr_router.vho"                                                                     -work addr_router                                                                    
  vhdlan -xlrm          "$QSYS_SIMDIR/submodules/blinker_nios2_proc_jtag_debug_module_translator_avalon_universal_slave_0_agent_rsp_fifo.vho" -work nios2_proc_jtag_debug_module_translator_avalon_universal_slave_0_agent_rsp_fifo
  vlogan +v2k -sverilog "$QSYS_SIMDIR/submodules/synopsys/altera_merlin_slave_agent.sv"                                                       -work nios2_proc_jtag_debug_module_translator_avalon_universal_slave_0_agent         
  vlogan +v2k -sverilog "$QSYS_SIMDIR/submodules/synopsys/altera_merlin_burst_uncompressor.sv"                                                -work nios2_proc_jtag_debug_module_translator_avalon_universal_slave_0_agent         
  vlogan +v2k -sverilog "$QSYS_SIMDIR/submodules/synopsys/altera_merlin_master_agent.sv"                                                      -work nios2_proc_instruction_master_translator_avalon_universal_master_0_agent       
  vlogan +v2k -sverilog "$QSYS_SIMDIR/submodules/synopsys/altera_merlin_slave_translator.sv"                                                  -work nios2_proc_jtag_debug_module_translator                                        
  vlogan +v2k -sverilog "$QSYS_SIMDIR/submodules/synopsys/altera_merlin_master_translator.sv"                                                 -work nios2_proc_instruction_master_translator                                       
  vhdlan -xlrm          "$QSYS_SIMDIR/submodules/blinker_sysid_1337.vho"                                                                      -work sysid_1337                                                                     
  vhdlan -xlrm          "$QSYS_SIMDIR/submodules/blinker_led.vhd"                                                                             -work led                                                                            
  vhdlan -xlrm          "$QSYS_SIMDIR/submodules/blinker_switcher.vhd"                                                                        -work switcher                                                                       
  vhdlan -xlrm          "$QSYS_SIMDIR/submodules/blinker_onchip_memory.vhd"                                                                   -work onchip_memory                                                                  
  vhdlan -xlrm          "$QSYS_SIMDIR/submodules/blinker_nios2_proc_jtag_debug_module_wrapper.vhd"                                            -work nios2_proc                                                                     
  vhdlan -xlrm          "$QSYS_SIMDIR/submodules/blinker_nios2_proc_oci_test_bench.vhd"                                                       -work nios2_proc                                                                     
  vhdlan -xlrm          "$QSYS_SIMDIR/submodules/blinker_nios2_proc_jtag_debug_module_tck.vhd"                                                -work nios2_proc                                                                     
  vhdlan -xlrm          "$QSYS_SIMDIR/submodules/blinker_nios2_proc_test_bench.vhd"                                                           -work nios2_proc                                                                     
  vhdlan -xlrm          "$QSYS_SIMDIR/submodules/blinker_nios2_proc_jtag_debug_module_sysclk.vhd"                                             -work nios2_proc                                                                     
  vhdlan -xlrm          "$QSYS_SIMDIR/submodules/blinker_nios2_proc.vhd"                                                                      -work nios2_proc                                                                     
  vhdlan -xlrm          "$QSYS_SIMDIR/blinker.vhd"                                                                                                                                                                                 
  vhdlan -xlrm          "$QSYS_SIMDIR/blinker_nios2_proc_jtag_debug_module_translator.vhd"                                                                                                                                         
  vhdlan -xlrm          "$QSYS_SIMDIR/blinker_onchip_memory_s1_translator.vhd"                                                                                                                                                     
  vhdlan -xlrm          "$QSYS_SIMDIR/blinker_switcher_s1_translator.vhd"                                                                                                                                                          
  vhdlan -xlrm          "$QSYS_SIMDIR/blinker_led_s1_translator.vhd"                                                                                                                                                               
  vhdlan -xlrm          "$QSYS_SIMDIR/blinker_sysid_1337_control_slave_translator.vhd"                                                                                                                                             
  vhdlan -xlrm          "$QSYS_SIMDIR/blinker_nios2_proc_instruction_master_translator.vhd"                                                                                                                                        
  vhdlan -xlrm          "$QSYS_SIMDIR/blinker_nios2_proc_data_master_translator.vhd"                                                                                                                                               
fi

# ----------------------------------------
# elaborate top level design
if [ $SKIP_ELAB -eq 0 ]; then
  vcs -lca -t ps $USER_DEFINED_ELAB_OPTIONS $TOP_LEVEL_NAME
fi

# ----------------------------------------
# simulate
if [ $SKIP_SIM -eq 0 ]; then
  ./simv $USER_DEFINED_SIM_OPTIONS
fi
