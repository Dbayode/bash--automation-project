#!/bin/bash

get_disk_usage() {
    local usage
    usage=$(df / | awk 'NR==2 {print $5}')
    echo "$usage"
}

get_memory_usage() {
    local usage
    usage=$(free -h | awk '/Mem:/ {print $3 "/" $2}')
    echo "$usage"
}
