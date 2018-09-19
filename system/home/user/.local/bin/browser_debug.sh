#!/bin/bash

#catecho () {
    #if read -t 0; then
        #cat
    #else
        #echo "$*"
    #fi
#}

cat|firefox "data:text/html;base64,$(base64 -w 0 <&0)"

