#!/bin/bash

#parse command-line arguments
while getopts "i:o:l:" opt; do
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
      echo "Invalid option: -$OPTARG" >&2
      exit 1
      ;;
    :)
      echo "Option -$OPTARG requires an argument." >&2
      exit 1
      ;;
  esac
done

#create processing directories 

#create destination directories

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

