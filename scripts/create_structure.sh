#!/bin/bash

set -e

TIMESTAMP=$(date +"%Y%m%d_%H%M%S")

PROJECT_DIR="project_workspace"

if [ ! -d "$PROJECT_DIR" ]; then
    mkdir -p "$PROJECT_DIR"/{logs,data,reports}
    echo "Directories created."
else
    echo "Directories already exist."
fi

REPORT_FILE="$PROJECT_DIR/reports/report_$TIMESTAMP.txt"

if [ ! -f "$REPORT_FILE" ]; then
    touch "$REPORT_FILE"
    echo "Report generated on $(date)" > "$REPORT_FILE"
fi

echo "Setup complete."

