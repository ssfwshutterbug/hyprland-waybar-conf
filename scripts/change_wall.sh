#!/bin/sh

# column after 7 are command executed (seperated by space)
cmd=$(ps -ef | rg wl_wall | rg -v rg | choose 7:)
pkill wl_wall && eval $cmd
