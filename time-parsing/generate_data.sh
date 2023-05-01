#!/bin/bash


while true; do
    rand_to_ten=$(( RANDOM % 10 ))
    docker exec -u 0 fluentd bash -c "echo \{\\\"data\\\":\\\"New\\\",\\\"mytime\\\":\\\"2023-05-01T12:13:14\\\"\} >> /tmp/log/mylog${rand_to_ten}.log"
    sleep 1
done

