#!/usr/bin/env bash
#KEYWRITE=
. config.cfg
INSTALL_DIR=${HOME}/monitor
MEMORIA=$(${INSTALL_DIR}/memoria.sh)
LOADAVG1=$(${INSTALL_DIR}/loadavg.sh)
LOADAVG5=$(${INSTALL_DIR}/loadavg.sh 5)
LOADAVG15=$(${INSTALL_DIR}/loadavg.sh 15)
DISKUSAGE=$(${INSTALL_DIR}/diskusage.sh)
curl https://api.thingspeak.com/update?api_key=${WRITEKEY}\&field1=${MEMORIA}\&field2=${LOADAVG1}\&field3=${LOADAVG5}\&field4=${LOADAVG15}\&field5=${DISKUSAGE}

