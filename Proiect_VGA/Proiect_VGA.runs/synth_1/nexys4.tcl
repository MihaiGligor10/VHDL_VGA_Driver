# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7a100tcsg324-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir C:/Users/Mihai/Desktop/Desktop/Faculta/SSC/Proiect_VGA/Proiect_VGA.cache/wt [current_project]
set_property parent.project_path C:/Users/Mihai/Desktop/Desktop/Faculta/SSC/Proiect_VGA/Proiect_VGA.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
set_property ip_output_repo c:/Users/Mihai/Desktop/Desktop/Faculta/SSC/Proiect_VGA/Proiect_VGA.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_vhdl -library xil_defaultlib {
  C:/Users/Mihai/Desktop/Desktop/Faculta/SSC/Proiect_VGA/Proiect_VGA.srcs/sources_1/new/SYNC.vhd
  C:/Users/Mihai/Desktop/Desktop/Faculta/SSC/Proiect_VGA/Proiect_VGA.srcs/sources_1/new/VGA.vhd
  C:/Users/Mihai/Desktop/Desktop/Faculta/SSC/Proiect_VGA/Proiect_VGA.srcs/sources_1/new/nexys4.vhd
}
foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}
read_xdc C:/Users/Mihai/Desktop/Desktop/Faculta/SSC/Proiect_VGA/Proiect_VGA.srcs/constrs_1/imports/Configuratie/Nexys4DDR_Master.xdc
set_property used_in_implementation false [get_files C:/Users/Mihai/Desktop/Desktop/Faculta/SSC/Proiect_VGA/Proiect_VGA.srcs/constrs_1/imports/Configuratie/Nexys4DDR_Master.xdc]


synth_design -top nexys4 -part xc7a100tcsg324-1


write_checkpoint -force -noxdef nexys4.dcp

catch { report_utilization -file nexys4_utilization_synth.rpt -pb nexys4_utilization_synth.pb }
