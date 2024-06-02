#!/bin/sh
#
#

flag=$(ps -ef |rg wl_wall |rg -v rg |awk '{print $NF}')
echo $$
pkill wl_wall

[ "$flag" = "-n" ] && {
    wl_wall -n &
} || {
    wl_wall -l &
}
