#!/bin/bash

# Set to exit after non-zero status
set -e
# for debugging comment out above one and use
#set -ex

# Define path for logs 
WRTNG_PATH=~/.wrtng/$(date +%Y)/$(date +%m)
# Make directory for path
mkdir -p $WRTNG_PATH

# echo date and time to log
echo -e "\n\n## "$(date "+%A - %B %d - %Y - [%T]")"\n\n" >> ${WRTNG_PATH}/$(date +%d).md
# open vim in path with a new file per day
vim "+normal Go" +startinsert ${WRTNG_PATH}/$(date +%d).md
