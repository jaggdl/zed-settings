#!/bin/bash

# Define the destination and backup paths
DESTINATION="$HOME/.config/zed/settings.json"
BACKUP="$DESTINATION.backup"

# Check if the backup file exists
if [ -f "$BACKUP" ]; then
  # Restore the original settings.json from the backup
  cp "$BACKUP" "$DESTINATION"
  echo "settings.json has been restored from $BACKUP"
else
  echo "Backup file does not exist. Cannot restore the original settings.json."
fi
