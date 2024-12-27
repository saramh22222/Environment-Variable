#!/bin/bash

# Define the path to the .bashrc file
BASHRC_FILE="$HOME/.bashrc"

# Check if the .bashrc file exists
if [ -f "$BASHRC_FILE" ]; then
    echo ".bashrc file found. Appending environment variables..."

    # Append the HELLO variable using the HOSTNAME value
    echo "export HELLO=\$HOSTNAME" >> "$BASHRC_FILE"

    # Append the LOCAL variable using the whoami command
    echo "export LOCAL=\$(whoami)" >> "$BASHRC_FILE"

    echo "Variables HELLO and LOCAL have been added to .bashrc."
else
    echo ".bashrc file not found. No changes made."
fi

# Open a new terminal window
echo "Opening a new terminal..."
gnome-terminal & # Adjust this line for other terminal emulators like `xterm`, `konsole`, etc.
