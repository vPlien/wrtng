#!/bin/bash

set -ev

WRTNG_PATH=~/.wrtng

# open the log in vim with timestamps in natural language 
vim +'normal Go' ${WRTNG_PATH}/$(date +%Y-%V).txt
