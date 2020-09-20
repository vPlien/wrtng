#!/usr/bin/env bash
# vim: ts=2 sts=2 sw=2 et

# Enable debug mode if DEBUG=1
if [[ $DEBUG == 1 ]]; then
  set -x
fi

# Set to exit after non-zero status
set -eu

# Journals directory
WRTNG_DIR="$HOME/wrtng"
mkdir -p "$WRTNG_DIR"

# Heredoc https://tldp.org/LDP/abs/html/here-docs.html
help_message() {
  cat <<EOF
Usage: $(basename "$0") [options] <journal>
Journal keeping application with support for multiple journals

Options:
  --list        List all journals and exit
EOF
}

UNPARSED=()
# while number of arguments is greater then 0, do
while [[ $# -gt 0 ]]; do
  # select based on value of the first argument
  case "$1" in
    -l|--list)
      list_journals
      exit
      ;;
    *)
      UNPARSED+="$1"
      shift
      ;;
  esac
done

if [[ ${#UNPARSED[@]} -ne 1 ]]; then
  echo 'Error: Invalid arguments...'
  help_message
  exit 1
fi

JOURNAL_NAME="${UNPARSED[0]}"

# TODO: Do any journal name validation here

JOURNAL="${WRTNG_DIR}/${JOURNAL_NAME}.md"

# # Define path for logs 
# WRTNG_PATH=~/.wrtng/$(date +%Y)/$(date +%m)
# # Make directory for path
# mkdir -p $WRTNG_PATH
# 
# # echo date and time to log
# echo -e "\n\n## "$(date "+%A %d/%m/%Y - [%T]")"\n\n" >> ${WRTNG_PATH}/$(date +%d).md
# # open vim in path with a new file per day
# vim "+normal Go" +startinsert ${WRTNG_PATH}/$(date +%d).md
