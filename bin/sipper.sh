#!/bin/bash
LIB_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )/../lib"

# load dependencies
. $LIB_DIR/constants.sh

#parse command-line arguments
while getopts "iol" opt; do
  case $opt in
    i)
      echo "Now processing the following directory: $OPTARG" >&2
      ;;
    o)
      echo "Output stored at: $OPTARG" >&2
      ;;
    l)
      echo "Log created at: $OPTARG" >&2
      ;;
    \?)
      echo "Invalid option: $OPTARG" >&2
      exit $EX_USAGE
      ;;
    :)
      echo "Option -$OPTARG requires an argument." >&2
      exit $EX_USAGE
      ;;
  esac
done

function check_exit {
  STATUS=$?
  if [ $STATUS != $ALL_GOOD ]; then
    echo $ERROR_MESSAGE
    (exit $STATUS)
  fi
}

#create processing directories 
. $LIB_DIR/create_processing_dirs.sh
check_exit

#create destination directories

# check for archive files (tar, tar.gz, zip, gz)
# - TODO: use file utility
# - TODO: more extensions/format
# . ../lib


#run virus scan and log outcomes

#ask whether to disk image
	#if yes, run guymager and log outcome
#if no, ask to validate checksums
	#if yes, run bagger and log outcome
	#if no, proceed to next step

#run bulkextractor and log outcomes

#run DROID and log outcomes

#inform archivist to create access copy 

#ask archivists if accession contains more files and/or disks
	#if yes, return to virus scan
	#if no, proceed to next step

#run bagger and log outcomes

