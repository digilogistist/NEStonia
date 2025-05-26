#!/bin/bash

# NEStonia Production Unit Registration
# Requires an ST-LINK v2.0 or later + ST-LINK CLI tool
# as well as a GitHub token for PUSH access

# Path to the repo token
GITHUB_TOKEN=$(< ~/.github_nestonia_token)

# Path to the ST-LINK CLI tool (modify as needed)
STLINK_CLI="/path/to/STM32_Programmer_CLI"  # or ST-LINK_CLI.exe

# Output folder for serial registration
OUT_DIR="./registered_units"
mkdir -p "$OUT_DIR"

# Read UID from STM32 (3x 32-bit words from 0x1FFFF7E8)
STLINK_OUTPUT=$("$STLINK_CLI" -c port=SWD -r32 0x1FFFF7E8 3 2>&1)

# exit script on error
STLINK_STATUS=$?
if [ $STLINK_STATUS -ne 0 ]; then
    echo "Error: ST-LINK failed to read UID!"
    echo "Output was:"
    echo "$STLINK_OUTPUT"
    exit 1
fi

# Extract just the UID words
readarray -t UID_WORDS < <(echo "$STLINK_OUTPUT" | grep "0x" | awk '{print $2}')

# Combine UID into single hex string
UID_HEX="${UID_WORDS[0]}${UID_WORDS[1]}${UID_WORDS[2]}"

# Final serial name
UID="NESTONIA-${UID_HEX}"

# Required environment variables
REPO="digilogistist/NEStonia-Registry"
BRANCH="main"

# File path in the repo
FILENAME="uids/${UID}.txt"
FILECONTENT="Registered UID: $UID"
ENCODED_CONTENT=$(echo "$FILECONTENT" | base64)

# GitHub API endpoint
API_URL="https://api.github.com/repos/${REPO}/contents/${FILENAME}"

# Create JSON payload
read -r -d '' PAYLOAD <<EOF
{
  "message": "Register NEStonia UID $UID",
  "content": "$ENCODED_CONTENT",
  "branch": "$BRANCH"
}
EOF

# Make the API request
curl -s -X PUT "$API_URL" \
  -H "Authorization: Bearer $GITHUB_TOKEN" \
  -H "Content-Type: application/json" \
  -d "$PAYLOAD" | jq .

