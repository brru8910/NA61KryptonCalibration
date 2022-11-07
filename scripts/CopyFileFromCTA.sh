#!/bin/bash

if [ "$#" -ne 2 ]
then
    echo "Incorrect amount of input arguments. Usage: CopyFileFromCTA.sh [pathToFile (no prefix)] [destination]"
    exit 1
fi

#Transfer arguments.
inputFile=$1
destination=$2

#Copy.
xrdcp root://eosctapublicdisk.cern.ch/$inputFile  $destination

if [ $? -ne 0 ]
then
  echo "[ERROR] xrdcp of file "$inputDirectory/$inputFile" failed!"
  exit 1
fi

exit 0
