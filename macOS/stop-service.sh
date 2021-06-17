#!/bin/bash

echo "Killing Kibana and elastic"

# Get PIDs of kibana and kill
export REQ_PIDS=$(pgrep -f kibana)
for pid in $REQ_PIDS
do
    kill -9 $pid 1>/dev/null 2>logs/killkibana-err.txt
done

# Get PIDs of kibana and kill
export REQ_PIDS=$(pgrep -f elasticsearch)
for pid in $REQ_PIDS
do
    kill -9 $pid 1>/dev/null 2>logs/killelastic-err.txt
done
