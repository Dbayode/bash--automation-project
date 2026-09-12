#!/bin/bash

set -e
set -u
set -o pipefail

cleanup() {
    echo "Cleaning up..."
}

trap cleanup EXIT

if [ $# -eq 0 ]; then
    echo "Usage: $0 <directory>"
    exit 1
fi

TARGET_DIR="$1"

if [ ! -d "$TARGET_DIR" ]; then
    echo "Directory does not exist."
    exit 1
fi

echo "Directory validated."

ls "$TARGET_DIR"
