#!/bin/bash

DISK_USAGE=$(df / | awk 'NR==2 {print $5}' | sed 's/%//')
MEMORY_USAGE=$(free | awk '/Mem:/ {printf("%.0f"), $3/$2 *100}')

echo "Disk Usage: $DISK_USAGE%"
echo "Memory Usage: $MEMORY_USAGE%"

if [ "$DISK_USAGE" -gt 80 ]; then
    echo "WARNING: Disk usage above threshold"
    exit 1
fi

if [ "$MEMORY_USAGE" -gt 80 ]; then
    echo "WARNING: Memory usage above threshold"
    exit 1
fi

echo "System healthy"
exit 0
