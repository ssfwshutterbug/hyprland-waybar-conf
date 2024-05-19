#!/bin/sh
#
#

flag=$(ps -ef |rg wl_wall |rg -v rg |awk '{print $NF}')
pkill wl_wall

[ $flag = "-n" ] && {
    wl_wall -n &
    exit
} || {
    wl_wall &
    exit
}
