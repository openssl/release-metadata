#!/bin/sh

JSON_DIR=$1
RC=0

for JSON_FILE in $(ls "$JSON_DIR"); do
    jq type 1>/dev/null < "$JSON_DIR/$JSON_FILE"
    if [ $? -gt 0 ]; then
        echo "Error in file: $JSON_DIR/$JSON_FILE"
        RC=1
    fi
done

exit "$RC"
