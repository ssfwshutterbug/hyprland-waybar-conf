#/bin/sh


amd_gpu_tmp=$(cat /sys/class/hwmon/hwmon0/temp1_input)
amd_gpu_tmp=$(expr $(($amd_gpu_tmp / 1000)))
echo "g_${amd_gpu_tmp}°C"

