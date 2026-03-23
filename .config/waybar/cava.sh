##!/bin/bash
#
## Create a temporary config file for cava
#CAVA_CONFIG="/tmp/waybar_cava_config"
#echo "
#[general]
#bars = 10
#sleep_timer = 0
#
#[output]
#method = raw
#raw_target = /dev/stdout
#data_format = ascii
#ascii_max_range = 7
#" >"$CAVA_CONFIG"
#
## Kill any existing cava process
#pkill -f "cava -p $CAVA_CONFIG"
#
## Run cava and use awk to handle output
## It will output an empty string (hiding the module) when silent
#cava -p "$CAVA_CONFIG" | awk -F ';' '{
#    # Check if all bars are zero
#    total = 0
#    for (i=1; i<NF; i++) total += $i
#
#    if (total == 0) {
#        print ""
#    } else {
#        res = ""
#        for (i=1; i<NF; i++) {
#            v = $i
#            if (v == 0) res = res " "
#            else if (v == 1) res = res "▂"
#            else if (v == 2) res = res "▃"
#            else if (v == 3) res = res "▄"
#            else if (v == 4) res = res "▅"
#            else if (v == 5) res = res "▆"
#            else if (v == 6) res = res "▇"
#            else res = res "█"
#        }
#        print res
#    }
#    fflush()
#}'
#! /bin/bash

sleep 2

bar="▁▂▃▄▅▆▇█"

dict="s/;//g;"

# creating "dictionary" to replace char with bar
i=0
while [ $i -lt ${#bar} ]; do
    dict="${dict}s/$i/${bar:$i:1}/g;"
    i=$((i = i + 1))
done

# write cava config
config_file="/tmp/polybar_cava_config"
echo "
[general]
bars = 14

[output]
method = raw
raw_target = /dev/stdout
data_format = ascii
ascii_max_range = 7
" >$config_file

# read stdout from cava
cava -p $config_file | while read -r line; do
    echo $line | sed $dict
done
