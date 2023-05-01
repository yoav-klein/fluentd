#!/bin/bash

while true; do
    randnum=$(( RANDOM % 1000 ))
    docker exec -u 0 fluentd bash -c "echo $randnum \{\\\"level\\\":\\\"DEBUG\\\",\\\"msg\\\":\\\"GoingGood\\\"\} >> /tmp/log/app.log"
    sleep 1
done
