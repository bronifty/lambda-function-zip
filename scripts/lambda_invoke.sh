#!/bin/bash

# Get the directory where the script is located
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

# Source the scripts using the script directory path
source "$SCRIPT_DIR/variables.sh"


aws lambda invoke \
    --function-name $FUNCTION_NAME \
    --payload 'JSON_STRING' \
    outputfile.txt