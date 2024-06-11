#/bin/sh


tmp_path=$(dirname $(rg amdgpu /sys/class/hwmon/hwmon*/name))
amd_gpu_tmp=$(cat $tmp_path/temp1_input)
amd_gpu_tmp=$(expr $(($amd_gpu_tmp / 1000)))
echo "g_${amd_gpu_tmp}°C"

