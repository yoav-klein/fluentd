#!/bin/bash

while true; do
    rand_to_ten=$(( RANDOM % 10 ))
    docker exec -u 0 fluentd bash -c "echo \{\\\"host\\\":\\\"www.2example.com\\\",\\\"message\\\":\\\"I am very cool\\\"\} >> /tmp/log/app.log"
    docker exec -u 0 fluentd bash -c "echo \{\\\"host\\\":\\\"www.2example.com\\\",\\\"message\\\":\\\"You are very uncool\\\"\} >> /tmp/log/app.log"
    docker exec -u 0 fluentd bash -c "echo \{\\\"host\\\":\\\"www.yad2.com\\\",\\\"message\\\":\\\"You are very cool\\\"\} >> /tmp/log/app.log"
    sleep 1
done

