#!/bin/bash

export WRTNG_PATH=~/.wrtng

mkdir -p $WRTNG_PATH

function wrtng(){
	# if the log for today exists then
    if [ ! -f ${WRTNG_PATH}/$(date +%Y-%V).txt ]; then
		# enter the week and date line into the log for today
        echo "Week $(date +"%V (%B %Y)") \n\n$(date +"%A %Y-%m-%d")" > ${WRTNG_PATH}/$(date +%Y-%V).txt
    fi
	# define the file edition date as the log with the stat function to see if the file has beet edited today
    FILE_EDITION_DATE="$(stat -c "%y" ${WRTNG_PATH}/$(date +%Y-%V).txt)"
	# define now as the date
    NOW="$(date +"%Y-%m-%d")"
	# if the file edition date (excluding the stat function) is not now then
    if [ ${FILE_EDITION_DATE:0:10} != ${NOW} ]; then
		# create a new logfile and enter the date in it
        echo "\n$(date +"%A %Y-%m-%d")\n" >> ${WRTNG_PATH}/$(date +%Y-%V).txt
    fi
	# open the log in vim with timestamps in natural language 
    vim +'normal Go' ${WRTNG_PATH}/$(date +%Y-%V).txt
}
