#! /bin/bash

composer show --installed|
    while read line; do
        if [[ -n "$(echo $line|awk '{print $3}'|grep -oP '[a-f0-9]{7}')" ]]; then
            echo "\"`echo $line|awk '{print $1}'`\": \"`echo $line|awk '{print $2}'`#`echo $line|awk '{print $3}'`\","
        else
            echo "\"`echo $line|awk '{print $1}'`\": \"`echo $line|awk '{print $2}'`\","
        fi
    done
