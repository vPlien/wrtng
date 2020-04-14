#!/bin/bash

# Set to exit after non-zero status, and verbose
set -ex

# Define path for logs 
WRTNG_PATH=~/.wrtng/$(date +%Y)/$(date +%m)
# Make directory for path
mkdir -p $WRTNG_PATH

# echo date and time to log
echo -e "$(date +%A)" - "$(date +%B)" "$(date +%d)" - "$(date +%Y)" - ["$(date +%T)"] "\n\n" > ${WRTNG_PATH}/$(date +%d).txt
# open vim in path with a new file per day
vim "+normal G$" +startinsert ${WRTNG_PATH}/$(date +%d).txt
