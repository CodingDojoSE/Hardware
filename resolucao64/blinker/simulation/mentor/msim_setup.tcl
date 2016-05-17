
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

# ACDS 13.0sp1 232 linux 2016.05.10.19:15:51

# ----------------------------------------
# Auto-generated simulation script

# ----------------------------------------
# Initialize the variable
if ![info exists SYSTEM_INSTANCE_NAME] { 
  set SYSTEM_INSTANCE_NAME ""
} elseif { ![ string match "" $SYSTEM_INSTANCE_NAME ] } { 
  set SYSTEM_INSTANCE_NAME "/$SYSTEM_INSTANCE_NAME"
} 

if ![info exists TOP_LEVEL_NAME] { 
  set TOP_LEVEL_NAME "blinker"
} 

if ![info exists QSYS_SIMDIR] { 
  set QSYS_SIMDIR "./../"
} 

if ![info exists QUARTUS_INSTALL_DIR] { 
  set QUARTUS_INSTALL_DIR "/usr/local/altera/13.0sp1/quartus/"
} 


# ----------------------------------------
# Copy ROM/RAM files to simulation directory
alias file_copy {
  echo "\[exec\] file_copy"
  file copy -force $QSYS_SIMDIR/submodules/blinker_onchip_memory.hex ./
  file copy -force $QSYS_SIMDIR/submodules/blinker_nios2_proc_ociram_default_contents.mif ./
  file copy -force $QSYS_SIMDIR/submodules/blinker_nios2_proc_rf_ram_a.mif ./
  file copy -force $QSYS_SIMDIR/submodules/blinker_nios2_proc_rf_ram_a.hex ./
  file copy -force $QSYS_SIMDIR/submodules/blinker_nios2_proc_rf_ram_b.mif ./
  file copy -force $QSYS_SIMDIR/submodules/blinker_nios2_proc_ociram_default_contents.dat ./
  file copy -force $QSYS_SIMDIR/submodules/blinker_nios2_proc_rf_ram_b.hex ./
  file copy -force $QSYS_SIMDIR/submodules/blinker_nios2_proc_rf_ram_b.dat ./
  file copy -force $QSYS_SIMDIR/submodules/blinker_nios2_proc_rf_ram_a.dat ./
  file copy -force $QSYS_SIMDIR/submodules/blinker_nios2_proc_ociram_default_contents.hex ./
}

# ----------------------------------------
# Create compilation libraries
proc ensure_lib { lib } { if ![file isdirectory $lib] { vlib $lib } }
ensure_lib          ./libraries/     
ensure_lib          ./libraries/work/
vmap       work     ./libraries/work/
vmap       work_lib ./libraries/work/
if { ![ string match "*ModelSim ALTERA*" [ vsim -version ] ] } {
  ensure_lib                        ./libraries/altera_ver/            
  vmap       altera_ver             ./libraries/altera_ver/            
  ensure_lib                        ./libraries/lpm_ver/               
  vmap       lpm_ver                ./libraries/lpm_ver/               
  ensure_lib                        ./libraries/sgate_ver/             
  vmap       sgate_ver              ./libraries/sgate_ver/             
  ensure_lib                        ./libraries/altera_mf_ver/         
  vmap       altera_mf_ver          ./libraries/altera_mf_ver/         
  ensure_lib                        ./libraries/altera_lnsim_ver/      
  vmap       altera_lnsim_ver       ./libraries/altera_lnsim_ver/      
  ensure_lib                        ./libraries/cycloneiv_hssi_ver/    
  vmap       cycloneiv_hssi_ver     ./libraries/cycloneiv_hssi_ver/    
  ensure_lib                        ./libraries/cycloneiv_pcie_hip_ver/
  vmap       cycloneiv_pcie_hip_ver ./libraries/cycloneiv_pcie_hip_ver/
  ensure_lib                        ./libraries/cycloneiv_ver/         
  vmap       cycloneiv_ver          ./libraries/cycloneiv_ver/         
  ensure_lib                        ./libraries/altera/                
  vmap       altera                 ./libraries/altera/                
  ensure_lib                        ./libraries/lpm/                   
  vmap       lpm                    ./libraries/lpm/                   
  ensure_lib                        ./libraries/sgate/                 
  vmap       sgate                  ./libraries/sgate/                 
  ensure_lib                        ./libraries/altera_mf/             
  vmap       altera_mf              ./libraries/altera_mf/             
  ensure_lib                        ./libraries/altera_lnsim/          
  vmap       altera_lnsim           ./libraries/altera_lnsim/          
  ensure_lib                        ./libraries/cycloneiv_hssi/        
  vmap       cycloneiv_hssi         ./libraries/cycloneiv_hssi/        
  ensure_lib                        ./libraries/cycloneiv_pcie_hip/    
  vmap       cycloneiv_pcie_hip     ./libraries/cycloneiv_pcie_hip/    
  ensure_lib                        ./libraries/cycloneiv/             
  vmap       cycloneiv              ./libraries/cycloneiv/             
}
ensure_lib                                                                                 ./libraries/irq_mapper/                                                                     
vmap       irq_mapper                                                                      ./libraries/irq_mapper/                                                                     
ensure_lib                                                                                 ./libraries/rsp_xbar_mux_001/                                                               
vmap       rsp_xbar_mux_001                                                                ./libraries/rsp_xbar_mux_001/                                                               
ensure_lib                                                                                 ./libraries/rsp_xbar_mux/                                                                   
vmap       rsp_xbar_mux                                                                    ./libraries/rsp_xbar_mux/                                                                   
ensure_lib                                                                                 ./libraries/rsp_xbar_demux_002/                                                             
vmap       rsp_xbar_demux_002                                                              ./libraries/rsp_xbar_demux_002/                                                             
ensure_lib                                                                                 ./libraries/cmd_xbar_mux/                                                                   
vmap       cmd_xbar_mux                                                                    ./libraries/cmd_xbar_mux/                                                                   
ensure_lib                                                                                 ./libraries/cmd_xbar_demux_001/                                                             
vmap       cmd_xbar_demux_001                                                              ./libraries/cmd_xbar_demux_001/                                                             
ensure_lib                                                                                 ./libraries/cmd_xbar_demux/                                                                 
vmap       cmd_xbar_demux                                                                  ./libraries/cmd_xbar_demux/                                                                 
ensure_lib                                                                                 ./libraries/rst_controller/                                                                 
vmap       rst_controller                                                                  ./libraries/rst_controller/                                                                 
ensure_lib                                                                                 ./libraries/id_router_002/                                                                  
vmap       id_router_002                                                                   ./libraries/id_router_002/                                                                  
ensure_lib                                                                                 ./libraries/id_router/                                                                      
vmap       id_router                                                                       ./libraries/id_router/                                                                      
ensure_lib                                                                                 ./libraries/addr_router_001/                                                                
vmap       addr_router_001                                                                 ./libraries/addr_router_001/                                                                
ensure_lib                                                                                 ./libraries/addr_router/                                                                    
vmap       addr_router                                                                     ./libraries/addr_router/                                                                    
ensure_lib                                                                                 ./libraries/nios2_proc_jtag_debug_module_translator_avalon_universal_slave_0_agent_rsp_fifo/
vmap       nios2_proc_jtag_debug_module_translator_avalon_universal_slave_0_agent_rsp_fifo ./libraries/nios2_proc_jtag_debug_module_translator_avalon_universal_slave_0_agent_rsp_fifo/
ensure_lib                                                                                 ./libraries/nios2_proc_jtag_debug_module_translator_avalon_universal_slave_0_agent/         
vmap       nios2_proc_jtag_debug_module_translator_avalon_universal_slave_0_agent          ./libraries/nios2_proc_jtag_debug_module_translator_avalon_universal_slave_0_agent/         
ensure_lib                                                                                 ./libraries/nios2_proc_instruction_master_translator_avalon_universal_master_0_agent/       
vmap       nios2_proc_instruction_master_translator_avalon_universal_master_0_agent        ./libraries/nios2_proc_instruction_master_translator_avalon_universal_master_0_agent/       
ensure_lib                                                                                 ./libraries/nios2_proc_jtag_debug_module_translator/                                        
vmap       nios2_proc_jtag_debug_module_translator                                         ./libraries/nios2_proc_jtag_debug_module_translator/                                        
ensure_lib                                                                                 ./libraries/nios2_proc_instruction_master_translator/                                       
vmap       nios2_proc_instruction_master_translator                                        ./libraries/nios2_proc_instruction_master_translator/                                       
ensure_lib                                                                                 ./libraries/sysid_1337/                                                                     
vmap       sysid_1337                                                                      ./libraries/sysid_1337/                                                                     
ensure_lib                                                                                 ./libraries/led/                                                                            
vmap       led                                                                             ./libraries/led/                                                                            
ensure_lib                                                                                 ./libraries/switcher/                                                                       
vmap       switcher                                                                        ./libraries/switcher/                                                                       
ensure_lib                                                                                 ./libraries/onchip_memory/                                                                  
vmap       onchip_memory                                                                   ./libraries/onchip_memory/                                                                  
ensure_lib                                                                                 ./libraries/nios2_proc/                                                                     
vmap       nios2_proc                                                                      ./libraries/nios2_proc/                                                                     

# ----------------------------------------
# Compile device library files
alias dev_com {
  echo "\[exec\] dev_com"
  if { ![ string match "*ModelSim ALTERA*" [ vsim -version ] ] } {
    vlog     "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives.v"               -work altera_ver            
    vlog     "$QUARTUS_INSTALL_DIR/eda/sim_lib/220model.v"                        -work lpm_ver               
    vlog     "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate.v"                           -work sgate_ver             
    vlog     "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf.v"                       -work altera_mf_ver         
    vlog -sv "$QUARTUS_INSTALL_DIR/eda/sim_lib/mentor/altera_lnsim_for_vhdl.sv"   -work altera_lnsim_ver      
    vlog     "$QUARTUS_INSTALL_DIR/eda/sim_lib/cycloneiv_hssi_atoms.v"            -work cycloneiv_hssi_ver    
    vlog     "$QUARTUS_INSTALL_DIR/eda/sim_lib/cycloneiv_pcie_hip_atoms.v"        -work cycloneiv_pcie_hip_ver
    vlog     "$QUARTUS_INSTALL_DIR/eda/sim_lib/cycloneiv_atoms.v"                 -work cycloneiv_ver         
    vcom     "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_syn_attributes.vhd"         -work altera                
    vcom     "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_standard_functions.vhd"     -work altera                
    vcom     "$QUARTUS_INSTALL_DIR/eda/sim_lib/alt_dspbuilder_package.vhd"        -work altera                
    vcom     "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_europa_support_lib.vhd"     -work altera                
    vcom     "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives_components.vhd"  -work altera                
    vcom     "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives.vhd"             -work altera                
    vcom     "$QUARTUS_INSTALL_DIR/eda/sim_lib/220pack.vhd"                       -work lpm                   
    vcom     "$QUARTUS_INSTALL_DIR/eda/sim_lib/220model.vhd"                      -work lpm                   
    vcom     "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate_pack.vhd"                    -work sgate                 
    vcom     "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate.vhd"                         -work sgate                 
    vcom     "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf_components.vhd"          -work altera_mf             
    vcom     "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf.vhd"                     -work altera_mf             
    vcom     "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_lnsim_components.vhd"       -work altera_lnsim          
    vcom     "$QUARTUS_INSTALL_DIR/eda/sim_lib/cycloneiv_hssi_components.vhd"     -work cycloneiv_hssi        
    vcom     "$QUARTUS_INSTALL_DIR/eda/sim_lib/cycloneiv_hssi_atoms.vhd"          -work cycloneiv_hssi        
    vcom     "$QUARTUS_INSTALL_DIR/eda/sim_lib/cycloneiv_pcie_hip_components.vhd" -work cycloneiv_pcie_hip    
    vcom     "$QUARTUS_INSTALL_DIR/eda/sim_lib/cycloneiv_pcie_hip_atoms.vhd"      -work cycloneiv_pcie_hip    
    vcom     "$QUARTUS_INSTALL_DIR/eda/sim_lib/cycloneiv_atoms.vhd"               -work cycloneiv             
    vcom     "$QUARTUS_INSTALL_DIR/eda/sim_lib/cycloneiv_components.vhd"          -work cycloneiv             
  }
}

# ----------------------------------------
# Compile the design files in correct order
alias com {
  echo "\[exec\] com"
  vcom     "$QSYS_SIMDIR/submodules/blinker_irq_mapper.vho"                                                                      -work irq_mapper                                                                     
  vcom     "$QSYS_SIMDIR/submodules/blinker_rsp_xbar_mux_001.vho"                                                                -work rsp_xbar_mux_001                                                               
  vcom     "$QSYS_SIMDIR/submodules/blinker_rsp_xbar_mux.vho"                                                                    -work rsp_xbar_mux                                                                   
  vcom     "$QSYS_SIMDIR/submodules/blinker_rsp_xbar_demux_002.vho"                                                              -work rsp_xbar_demux_002                                                             
  vcom     "$QSYS_SIMDIR/submodules/blinker_cmd_xbar_mux.vho"                                                                    -work cmd_xbar_mux                                                                   
  vcom     "$QSYS_SIMDIR/submodules/blinker_cmd_xbar_demux_001.vho"                                                              -work cmd_xbar_demux_001                                                             
  vcom     "$QSYS_SIMDIR/submodules/blinker_cmd_xbar_demux.vho"                                                                  -work cmd_xbar_demux                                                                 
  vlog     "$QSYS_SIMDIR/submodules/mentor/altera_reset_controller.v"                                                            -work rst_controller                                                                 
  vlog     "$QSYS_SIMDIR/submodules/mentor/altera_reset_synchronizer.v"                                                          -work rst_controller                                                                 
  vcom     "$QSYS_SIMDIR/submodules/blinker_id_router_002.vho"                                                                   -work id_router_002                                                                  
  vcom     "$QSYS_SIMDIR/submodules/blinker_id_router.vho"                                                                       -work id_router                                                                      
  vcom     "$QSYS_SIMDIR/submodules/blinker_addr_router_001.vho"                                                                 -work addr_router_001                                                                
  vcom     "$QSYS_SIMDIR/submodules/blinker_addr_router.vho"                                                                     -work addr_router                                                                    
  vcom     "$QSYS_SIMDIR/submodules/blinker_nios2_proc_jtag_debug_module_translator_avalon_universal_slave_0_agent_rsp_fifo.vho" -work nios2_proc_jtag_debug_module_translator_avalon_universal_slave_0_agent_rsp_fifo
  vlog -sv "$QSYS_SIMDIR/submodules/mentor/altera_merlin_slave_agent.sv"                                                         -work nios2_proc_jtag_debug_module_translator_avalon_universal_slave_0_agent         
  vlog -sv "$QSYS_SIMDIR/submodules/mentor/altera_merlin_burst_uncompressor.sv"                                                  -work nios2_proc_jtag_debug_module_translator_avalon_universal_slave_0_agent         
  vlog -sv "$QSYS_SIMDIR/submodules/mentor/altera_merlin_master_agent.sv"                                                        -work nios2_proc_instruction_master_translator_avalon_universal_master_0_agent       
  vlog -sv "$QSYS_SIMDIR/submodules/mentor/altera_merlin_slave_translator.sv"                                                    -work nios2_proc_jtag_debug_module_translator                                        
  vlog -sv "$QSYS_SIMDIR/submodules/mentor/altera_merlin_master_translator.sv"                                                   -work nios2_proc_instruction_master_translator                                       
  vcom     "$QSYS_SIMDIR/submodules/blinker_sysid_1337.vho"                                                                      -work sysid_1337                                                                     
  vcom     "$QSYS_SIMDIR/submodules/blinker_led.vhd"                                                                             -work led                                                                            
  vcom     "$QSYS_SIMDIR/submodules/blinker_switcher.vhd"                                                                        -work switcher                                                                       
  vcom     "$QSYS_SIMDIR/submodules/blinker_onchip_memory.vhd"                                                                   -work onchip_memory                                                                  
  vcom     "$QSYS_SIMDIR/submodules/blinker_nios2_proc_jtag_debug_module_wrapper.vhd"                                            -work nios2_proc                                                                     
  vcom     "$QSYS_SIMDIR/submodules/blinker_nios2_proc_oci_test_bench.vhd"                                                       -work nios2_proc                                                                     
  vcom     "$QSYS_SIMDIR/submodules/blinker_nios2_proc_jtag_debug_module_tck.vhd"                                                -work nios2_proc                                                                     
  vcom     "$QSYS_SIMDIR/submodules/blinker_nios2_proc_test_bench.vhd"                                                           -work nios2_proc                                                                     
  vcom     "$QSYS_SIMDIR/submodules/blinker_nios2_proc_jtag_debug_module_sysclk.vhd"                                             -work nios2_proc                                                                     
  vcom     "$QSYS_SIMDIR/submodules/blinker_nios2_proc.vhd"                                                                      -work nios2_proc                                                                     
  vcom     "$QSYS_SIMDIR/blinker.vhd"                                                                                                                                                                                 
  vcom     "$QSYS_SIMDIR/blinker_nios2_proc_jtag_debug_module_translator.vhd"                                                                                                                                         
  vcom     "$QSYS_SIMDIR/blinker_onchip_memory_s1_translator.vhd"                                                                                                                                                     
  vcom     "$QSYS_SIMDIR/blinker_switcher_s1_translator.vhd"                                                                                                                                                          
  vcom     "$QSYS_SIMDIR/blinker_led_s1_translator.vhd"                                                                                                                                                               
  vcom     "$QSYS_SIMDIR/blinker_sysid_1337_control_slave_translator.vhd"                                                                                                                                             
  vcom     "$QSYS_SIMDIR/blinker_nios2_proc_instruction_master_translator.vhd"                                                                                                                                        
  vcom     "$QSYS_SIMDIR/blinker_nios2_proc_data_master_translator.vhd"                                                                                                                                               
}

# ----------------------------------------
# Elaborate top level design
alias elab {
  echo "\[exec\] elab"
  vsim -t ps -L work -L work_lib -L irq_mapper -L rsp_xbar_mux_001 -L rsp_xbar_mux -L rsp_xbar_demux_002 -L cmd_xbar_mux -L cmd_xbar_demux_001 -L cmd_xbar_demux -L rst_controller -L id_router_002 -L id_router -L addr_router_001 -L addr_router -L nios2_proc_jtag_debug_module_translator_avalon_universal_slave_0_agent_rsp_fifo -L nios2_proc_jtag_debug_module_translator_avalon_universal_slave_0_agent -L nios2_proc_instruction_master_translator_avalon_universal_master_0_agent -L nios2_proc_jtag_debug_module_translator -L nios2_proc_instruction_master_translator -L sysid_1337 -L led -L switcher -L onchip_memory -L nios2_proc -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneiv_hssi_ver -L cycloneiv_pcie_hip_ver -L cycloneiv_ver -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneiv_hssi -L cycloneiv_pcie_hip -L cycloneiv $TOP_LEVEL_NAME
}

# ----------------------------------------
# Elaborate the top level design with novopt option
alias elab_debug {
  echo "\[exec\] elab_debug"
  vsim -novopt -t ps -L work -L work_lib -L irq_mapper -L rsp_xbar_mux_001 -L rsp_xbar_mux -L rsp_xbar_demux_002 -L cmd_xbar_mux -L cmd_xbar_demux_001 -L cmd_xbar_demux -L rst_controller -L id_router_002 -L id_router -L addr_router_001 -L addr_router -L nios2_proc_jtag_debug_module_translator_avalon_universal_slave_0_agent_rsp_fifo -L nios2_proc_jtag_debug_module_translator_avalon_universal_slave_0_agent -L nios2_proc_instruction_master_translator_avalon_universal_master_0_agent -L nios2_proc_jtag_debug_module_translator -L nios2_proc_instruction_master_translator -L sysid_1337 -L led -L switcher -L onchip_memory -L nios2_proc -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneiv_hssi_ver -L cycloneiv_pcie_hip_ver -L cycloneiv_ver -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneiv_hssi -L cycloneiv_pcie_hip -L cycloneiv $TOP_LEVEL_NAME
}

# ----------------------------------------
# Compile all the design files and elaborate the top level design
alias ld "
  dev_com
  com
  elab
"

# ----------------------------------------
# Compile all the design files and elaborate the top level design with -novopt
alias ld_debug "
  dev_com
  com
  elab_debug
"

# ----------------------------------------
# Print out user commmand line aliases
alias h {
  echo "List Of Command Line Aliases"
  echo
  echo "file_copy                     -- Copy ROM/RAM files to simulation directory"
  echo
  echo "dev_com                       -- Compile device library files"
  echo
  echo "com                           -- Compile the design files in correct order"
  echo
  echo "elab                          -- Elaborate top level design"
  echo
  echo "elab_debug                    -- Elaborate the top level design with novopt option"
  echo
  echo "ld                            -- Compile all the design files and elaborate the top level design"
  echo
  echo "ld_debug                      -- Compile all the design files and elaborate the top level design with -novopt"
  echo
  echo 
  echo
  echo "List Of Variables"
  echo
  echo "TOP_LEVEL_NAME                -- Top level module name."
  echo
  echo "SYSTEM_INSTANCE_NAME          -- Instantiated system module name inside top level module."
  echo
  echo "QSYS_SIMDIR                   -- Qsys base simulation directory."
  echo
  echo "QUARTUS_INSTALL_DIR           -- Quartus installation directory."
}
file_copy
h
