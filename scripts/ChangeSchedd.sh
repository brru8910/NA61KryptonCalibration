#!/bin/bash

newBigBird=12

if [[ $# -gt 2 ]]
then
    echo "[ERROR] Incorrect usage! Usage: ./ChangeSchedd.sh [optional number for new bigbird Id]"
    exit 1
fi

if [[ $# -eq 1 ]]
then
    newBigBird=$1
fi

echo '[INFO] Changing Condor schedd host to bigbird'$newBigBird'.cern.ch.'
export _CONDOR_SCHEDD_HOST=bigbird$newBigBird.cern.ch 
echo '[INFO] Changing Condor credd host to bigbird'$newBigBird'.cern.ch.'
export _CONDOR_CREDD_HOST=bigbird$newBigBird.cern.ch

echo '[INFO] Finshed.'
