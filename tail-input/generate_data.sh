#!/bin/bash

while true; do
    rand_to_ten=$(( RANDOM % 10 ))
    docker exec -u 0 fluentd bash -c "echo {\\\"data\\\":\\\"New\\\"} >> /tmp/log/mylog${rand_to_ten}.log"
    docker exec -u 0 fluentd bash -c "echo {\\\"data\\\":\\\"New\\\"} >> /tmp/log/mylog-ignore.log"
    sleep 1
done

