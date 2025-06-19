#!/bin/bash

TZ=${TZ:-UTC}
export TZ

export N8N_PORT=${SERVER_PORT}
export N8N_SECURE_COOKIE=false
export N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=false

cd /home/container || exit 1

PARSED=$(echo "${STARTUP}" | sed -e 's/{{/${/g' -e 's/}}/}/g' | eval echo "$(cat -)")
exec env ${PARSED}
