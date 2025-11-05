#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Wed Nov  5 10:13:33 2025                
#                                                     
#######################################################

#@(#)CDS: Innovus v20.14-s095_1 (64bit) 04/19/2021 14:41 (Linux 2.6.32-431.11.2.el6.x86_64)
#@(#)CDS: NanoRoute 20.14-s095_1 NR210411-1939/20_14-UB (database version 18.20.547) {superthreading v2.13}
#@(#)CDS: AAE 20.14-s018 (64bit) 04/19/2021 (Linux 2.6.32-431.11.2.el6.x86_64)
#@(#)CDS: CTE 20.14-s027_1 () Apr 13 2021 21:29:07 ( )
#@(#)CDS: SYNTECH 20.14-s017_1 () Mar 25 2021 13:07:27 ( )
#@(#)CDS: CPE v20.14-s080
#@(#)CDS: IQuantus/TQuantus 20.1.1-s460 (64bit) Fri Mar 5 18:46:16 PST 2021 (Linux 2.6.32-431.11.2.el6.x86_64)

set_global _enable_mmmc_by_default_flow      $CTE::mmmc_default
suppressMessage ENCEXT-2799
getVersion
getVersion
getVersion
win
set init_gnd_net vss
set init_lef_file ../../../install/FOUNDRY/digital/90nm/dig/lef/gsclib090_translated.lef
set init_verilog mips_netlist.v
set init_mmmc_file Default.view
set init_pwr_net vdd
init_design
zoomBox 2.52150 -0.69050 32.66300 26.29250
zoomBox -11.90100 -4.01500 56.03100 56.79850
zoomBox -7.82800 -3.14550 49.91450 48.54650
zoomBox -4.34350 -2.17100 44.73800 41.76750
zoomBox -11.85450 -4.24400 56.07850 56.57050
zoomBox -17.46850 -4.74050 62.45250 66.80600
zoomBox -11.85450 -4.24400 56.07850 56.57050
zoomBox -7.08250 -3.82250 50.66050 47.87000
zoomBox -3.02650 -3.46450 46.05550 40.47450
getIoFlowFlag
setIoFlowFlag 0
floorPlan -coreMarginsBy die -site gsclib090site -r 1 0.8 6 6 6 6
uiSetTool select
getIoFlowFlag
fit
setIoFlowFlag 0
floorPlan -site gsclib090site -r 0.870967741935 0.799731 6.09 6.09 6.09 6.09
uiSetTool select
getIoFlowFlag
fit
clearGlobalNets
globalNetConnect vdd -type pgpin -pin vdd -instanceBasename * -hierarchicalInstance {}
globalNetConnect vss -type pgpin -pin vss -instanceBasename * -hierarchicalInstance {}
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer Metal9 -stacked_via_bottom_layer Metal1 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {{alu_result[0]} {alu_result[10]} {alu_result[11]} {alu_result[12]} {alu_result[13]} {alu_result[14]} {alu_result[15]} {alu_result[16]} {alu_result[17]} {alu_result[18]} {alu_result[19]} {alu_result[1]} {alu_result[20]} {alu_result[21]} {alu_result[22]} {alu_result[23]} {alu_result[24]} {alu_result[25]} {alu_result[26]} {alu_result[27]} {alu_result[28]} {alu_result[29]} {alu_result[2]} {alu_result[30]} {alu_result[31]} {alu_result[3]} {alu_result[4]} {alu_result[5]} {alu_result[6]} {alu_result[7]} {alu_result[8]} {alu_result[9]} {instr[0]} {instr[10]} {instr[11]} {instr[12]} {instr[13]} {instr[14]} {instr[15]} {instr[16]} {instr[17]} {instr[18]} {instr[19]} {instr[1]} {instr[20]} {instr[21]} {instr[22]} {instr[23]} {instr[24]} {instr[25]} {instr[26]} {instr[27]} {instr[28]} {instr[29]} {instr[2]} {instr[30]} {instr[31]} {instr[3]} {instr[4]} {instr[5]} {instr[6]} {instr[7]} {instr[8]} {instr[9]} {mem_read_data[0]} {mem_read_data[10]} {mem_read_data[11]} {mem_read_data[12]} {mem_read_data[13]} {mem_read_data[14]} {mem_read_data[15]} {mem_read_data[16]} {mem_read_data[17]} {mem_read_data[18]} {mem_read_data[19]} {mem_read_data[1]} {mem_read_data[20]} {mem_read_data[21]} {mem_read_data[22]} {mem_read_data[23]} {mem_read_data[24]} {mem_read_data[25]} {mem_read_data[26]} {mem_read_data[27]} {mem_read_data[28]} {mem_read_data[29]} {mem_read_data[2]} {mem_read_data[30]} {mem_read_data[31]} {mem_read_data[3]} {mem_read_data[4]} {mem_read_data[5]} {mem_read_data[6]} {mem_read_data[7]} {mem_read_data[8]} {mem_read_data[9]} {pc[0]} {pc[1]} vdd vss} -type core_rings -follow core -layer {top Metal9 bottom Metal9 left Metal8 right Metal8} -width {top 1.8 bottom 1.8 left 1.8 right 1.8} -spacing {top 1.8 bottom 1.8 left 1.8 right 1.8} -offset {top 1.8 bottom 1.8 left 1.8 right 1.8} -center 0 -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
setAddStripeMode -ignore_block_check false -break_at none -route_over_rows_only false -rows_without_stripes_only false -extend_to_closest_target none -stop_at_last_wire_for_area false -partial_set_thru_domain false -ignore_nondefault_domains false -trim_antenna_back_to_shape none -spacing_type edge_to_edge -spacing_from_block 0 -stripe_min_length stripe_width -stacked_via_top_layer Metal9 -stacked_via_bottom_layer Metal1 -via_using_exact_crossover_size false -split_vias false -orthogonal_only true -allow_jog { padcore_ring  block_ring } -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape   }
addStripe -nets {{alu_result[0]} {alu_result[10]} {alu_result[11]} {alu_result[12]} {alu_result[13]} {alu_result[14]} {alu_result[15]} {alu_result[16]} {alu_result[17]} {alu_result[18]} {alu_result[19]} {alu_result[1]} {alu_result[20]} {alu_result[21]} {alu_result[22]} {alu_result[23]} {alu_result[24]} {alu_result[25]} {alu_result[26]} {alu_result[27]} {alu_result[28]} {alu_result[29]} {alu_result[2]} {alu_result[30]} {alu_result[31]} {alu_result[3]} {alu_result[4]} {alu_result[5]} {alu_result[6]} {alu_result[7]} {alu_result[8]} {alu_result[9]} {instr[0]} {instr[10]} {instr[11]} {instr[12]} {instr[13]} {instr[14]} {instr[15]} {instr[16]} {instr[17]} {instr[18]} {instr[19]} {instr[1]} {instr[20]} {instr[21]} {instr[22]} {instr[23]} {instr[24]} {instr[25]} {instr[26]} {instr[27]} {instr[28]} {instr[29]} {instr[2]} {instr[30]} {instr[31]} {instr[3]} {instr[4]} {instr[5]} {instr[6]} {instr[7]} {instr[8]} {instr[9]} {mem_read_data[0]} {mem_read_data[10]} {mem_read_data[11]} {mem_read_data[12]} {mem_read_data[13]} {mem_read_data[14]} {mem_read_data[15]} {mem_read_data[16]} {mem_read_data[17]} {mem_read_data[18]} {mem_read_data[19]} {mem_read_data[1]} {mem_read_data[20]} {mem_read_data[21]} {mem_read_data[22]} {mem_read_data[23]} {mem_read_data[24]} {mem_read_data[25]} {mem_read_data[26]} {mem_read_data[27]} {mem_read_data[28]} {mem_read_data[29]} {mem_read_data[2]} {mem_read_data[30]} {mem_read_data[31]} {mem_read_data[3]} {mem_read_data[4]} {mem_read_data[5]} {mem_read_data[6]} {mem_read_data[7]} {mem_read_data[8]} {mem_read_data[9]} {pc[0]} {pc[1]} vdd vss} -layer Metal9 -direction horizontal -width 1.8 -spacing 1.8 -number_of_sets 2 -start_from bottom -switch_layer_over_obs false -max_same_layer_jog_length 2 -padcore_ring_top_layer_limit Metal9 -padcore_ring_bottom_layer_limit Metal1 -block_ring_top_layer_limit Metal9 -block_ring_bottom_layer_limit Metal1 -use_wire_group 0 -snap_wire_center_to_grid None
setAddStripeMode -ignore_block_check false -break_at none -route_over_rows_only false -rows_without_stripes_only false -extend_to_closest_target none -stop_at_last_wire_for_area false -partial_set_thru_domain false -ignore_nondefault_domains false -trim_antenna_back_to_shape none -spacing_type edge_to_edge -spacing_from_block 0 -stripe_min_length stripe_width -stacked_via_top_layer Metal9 -stacked_via_bottom_layer Metal1 -via_using_exact_crossover_size false -split_vias false -orthogonal_only true -allow_jog { padcore_ring  block_ring } -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape   }
addStripe -nets {{alu_result[0]} {alu_result[10]} {alu_result[11]} {alu_result[12]} {alu_result[13]} {alu_result[14]} {alu_result[15]} {alu_result[16]} {alu_result[17]} {alu_result[18]} {alu_result[19]} {alu_result[1]} {alu_result[20]} {alu_result[21]} {alu_result[22]} {alu_result[23]} {alu_result[24]} {alu_result[25]} {alu_result[26]} {alu_result[27]} {alu_result[28]} {alu_result[29]} {alu_result[2]} {alu_result[30]} {alu_result[31]} {alu_result[3]} {alu_result[4]} {alu_result[5]} {alu_result[6]} {alu_result[7]} {alu_result[8]} {alu_result[9]} {instr[0]} {instr[10]} {instr[11]} {instr[12]} {instr[13]} {instr[14]} {instr[15]} {instr[16]} {instr[17]} {instr[18]} {instr[19]} {instr[1]} {instr[20]} {instr[21]} {instr[22]} {instr[23]} {instr[24]} {instr[25]} {instr[26]} {instr[27]} {instr[28]} {instr[29]} {instr[2]} {instr[30]} {instr[31]} {instr[3]} {instr[4]} {instr[5]} {instr[6]} {instr[7]} {instr[8]} {instr[9]} {mem_read_data[0]} {mem_read_data[10]} {mem_read_data[11]} {mem_read_data[12]} {mem_read_data[13]} {mem_read_data[14]} {mem_read_data[15]} {mem_read_data[16]} {mem_read_data[17]} {mem_read_data[18]} {mem_read_data[19]} {mem_read_data[1]} {mem_read_data[20]} {mem_read_data[21]} {mem_read_data[22]} {mem_read_data[23]} {mem_read_data[24]} {mem_read_data[25]} {mem_read_data[26]} {mem_read_data[27]} {mem_read_data[28]} {mem_read_data[29]} {mem_read_data[2]} {mem_read_data[30]} {mem_read_data[31]} {mem_read_data[3]} {mem_read_data[4]} {mem_read_data[5]} {mem_read_data[6]} {mem_read_data[7]} {mem_read_data[8]} {mem_read_data[9]} {pc[0]} {pc[1]} vdd vss} -layer Metal8 -direction vertical -width 1.8 -spacing 1.8 -number_of_sets 2 -start_from left -switch_layer_over_obs false -max_same_layer_jog_length 2 -padcore_ring_top_layer_limit Metal9 -padcore_ring_bottom_layer_limit Metal1 -block_ring_top_layer_limit Metal9 -block_ring_bottom_layer_limit Metal1 -use_wire_group 0 -snap_wire_center_to_grid None
setAddStripeMode -ignore_block_check false -break_at none -route_over_rows_only false -rows_without_stripes_only false -extend_to_closest_target none -stop_at_last_wire_for_area false -partial_set_thru_domain false -ignore_nondefault_domains false -trim_antenna_back_to_shape none -spacing_type edge_to_edge -spacing_from_block 0 -stripe_min_length stripe_width -stacked_via_top_layer Metal9 -stacked_via_bottom_layer Metal1 -via_using_exact_crossover_size false -split_vias false -orthogonal_only true -allow_jog { padcore_ring  block_ring } -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape   }
addStripe -nets {{alu_result[0]} {alu_result[10]} {alu_result[11]} {alu_result[12]} {alu_result[13]} {alu_result[14]} {alu_result[15]} {alu_result[16]} {alu_result[17]} {alu_result[18]} {alu_result[19]} {alu_result[1]} {alu_result[20]} {alu_result[21]} {alu_result[22]} {alu_result[23]} {alu_result[24]} {alu_result[25]} {alu_result[26]} {alu_result[27]} {alu_result[28]} {alu_result[29]} {alu_result[2]} {alu_result[30]} {alu_result[31]} {alu_result[3]} {alu_result[4]} {alu_result[5]} {alu_result[6]} {alu_result[7]} {alu_result[8]} {alu_result[9]} {instr[0]} {instr[10]} {instr[11]} {instr[12]} {instr[13]} {instr[14]} {instr[15]} {instr[16]} {instr[17]} {instr[18]} {instr[19]} {instr[1]} {instr[20]} {instr[21]} {instr[22]} {instr[23]} {instr[24]} {instr[25]} {instr[26]} {instr[27]} {instr[28]} {instr[29]} {instr[2]} {instr[30]} {instr[31]} {instr[3]} {instr[4]} {instr[5]} {instr[6]} {instr[7]} {instr[8]} {instr[9]} {mem_read_data[0]} {mem_read_data[10]} {mem_read_data[11]} {mem_read_data[12]} {mem_read_data[13]} {mem_read_data[14]} {mem_read_data[15]} {mem_read_data[16]} {mem_read_data[17]} {mem_read_data[18]} {mem_read_data[19]} {mem_read_data[1]} {mem_read_data[20]} {mem_read_data[21]} {mem_read_data[22]} {mem_read_data[23]} {mem_read_data[24]} {mem_read_data[25]} {mem_read_data[26]} {mem_read_data[27]} {mem_read_data[28]} {mem_read_data[29]} {mem_read_data[2]} {mem_read_data[30]} {mem_read_data[31]} {mem_read_data[3]} {mem_read_data[4]} {mem_read_data[5]} {mem_read_data[6]} {mem_read_data[7]} {mem_read_data[8]} {mem_read_data[9]} {pc[0]} {pc[1]} vdd vss} -layer Metal8 -direction vertical -width 1.8 -spacing 1.8 -number_of_sets 2 -start_from left -switch_layer_over_obs false -max_same_layer_jog_length 2 -padcore_ring_top_layer_limit Metal9 -padcore_ring_bottom_layer_limit Metal1 -block_ring_top_layer_limit Metal9 -block_ring_bottom_layer_limit Metal1 -use_wire_group 0 -snap_wire_center_to_grid None
