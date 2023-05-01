#!/bin/bash

file_name=$1

docker exec -u 0 fluentd bash -c 'echo \{\"data\":\"New\"\} >> /var/log/mylog1.log'
