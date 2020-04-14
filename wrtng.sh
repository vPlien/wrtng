#!/bin/bash

set -ev

WRTNG_PATH=~/.wrtng/$(date +%Y)/$(date +%m)

mkdir -p $WRTNG_PATH

# open the log in vim with timestamps in natural language 
vim ${WRTNG_PATH}/$(date +%d).txt

