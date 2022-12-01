#!/bin/bash

# function to time command passed as $1
# input
# $1: command to execute as string
timeCMD() {
    start=$(date +%s)
    $1
    end=$(date +%s)
    t=$(($end - $start))
    printf 'Time taken: %d hours, %d minutes, %d seconds\n' "$(( t/60/60 ))"  "$(( t/60 - 60*(t/60/60) ))" "$(( t - 60*(t/60) ))"
}

# Run command with timing:
timeCMD "sleep 4200"

timeCMD "sleep 3"

timeCMD "sleep 62"
