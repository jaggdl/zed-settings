#!/bin/bash

# Define source and destination paths
SOURCE="./settings.json"
DESTINATION="$HOME/.config/zed/settings.json"
BACKUP="$DESTINATION.backup"

# Create the destination directory if it does not exist
mkdir -p "$(dirname "$DESTINATION")"

# Create a backup of the original file if it exists
if [ -f "$DESTINATION" ]; then
  cp "$DESTINATION" "$BACKUP"
  echo "Backup of the original settings.json created at $BACKUP"
fi

# Copy the new settings.json
cp "$SOURCE" "$DESTINATION"

# Print success message
echo "settings.json has been copied to $DESTINATION"
