#!/bin/bash

SOURCE="./settings.json"
DESTINATION="$HOME/.config/zed/settings.json"

mkdir -p "$(dirname "$DESTINATION")"

cp "$SOURCE" "$DESTINATION"

echo "settings.json has been copied to $DESTINATION"
