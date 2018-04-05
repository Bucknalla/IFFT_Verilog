#!/bin/bash -f
xv_path="/opt/Xilinx/Vivado/2016.4"
ExecStep()
{
"$@"
RETVAL=$?
if [ $RETVAL -ne 0 ]
then
exit $RETVAL
fi
}
ExecStep $xv_path/bin/xelab -wto 88fa852aa3bc42ddac2ab429a1caf2aa -m64 --debug typical --relax --mt 8 -L fifo_generator_v13_1_3 -L xil_defaultlib -L xbip_utils_v3_0_7 -L axi_utils_v2_0_3 -L c_reg_fd_v12_0_3 -L xbip_dsp48_wrapper_v3_0_4 -L xbip_pipe_v3_0_3 -L xbip_dsp48_addsub_v3_0_3 -L xbip_addsub_v3_0_3 -L c_addsub_v12_0_10 -L c_mux_bit_v12_0_3 -L c_shift_ram_v12_0_10 -L xbip_bram18k_v3_0_3 -L mult_gen_v12_0_12 -L cmpy_v6_0_12 -L floating_point_v7_0_13 -L xfft_v9_0_11 -L generic_baseblocks_v2_1_0 -L axi_infrastructure_v1_1_0 -L axi_register_slice_v2_1_11 -L axi_data_fifo_v2_1_10 -L axi_crossbar_v2_1_12 -L unisims_ver -L unimacro_ver -L secureip -L xpm --snapshot baseband_tb_behav xil_defaultlib.baseband_tb xil_defaultlib.glbl -log elaborate.log