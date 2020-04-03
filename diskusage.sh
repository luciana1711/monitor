#!/usr/bin/env bash
TOTAL=$(df --output=source,size,used / | tail -n +2 | awk '{print $2}')
USADO=$(df --output=source,size,used / | tail -n +2 | awk '{print $3}')
echo $(( ${USADO} * 100 / ${TOTAL} ))

