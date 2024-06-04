#!/bin/sh

# column after 7 are command executed (seperated by space)
cmd=$(ps -ef | rg wl_wall | rg -v nvim | rg -v rg | choose 8:)
eval $cmd
