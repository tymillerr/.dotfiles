#!/bin/bash # Add the shebang for bash

# 3. Check if the operating system is Linux
if [ "$(uname)" != "Linux" ]; then
    echo "Error: This script can only be run on Linux." >> linuxsetup.log # Log error message to 'linuxsetup.log'
    exit 1 # Exit the script with an error code
fi

# 4. Create the '.TRASH' directory in the home directory if it doesn't already exist
mkdir -p "$HOME/.TRASH" # '-p' ensures no error is thrown if the directory exists

# 5. Rename '.nanorc' if it exists and log the change
if [ -f "$HOME/.nanorc" ]; then # Check if '.nanorc' exists in the home directory
    mv "$HOME/.nanorc" "$HOME/.bup nanorc" # Rename '.nanorc' to '.bup nanorc'
    echo "Renamed existing .nanorc to .bup nanorc" >> linuxsetup.log # Log the rename action
fi

# 6. Overwrite the contents of 'etc/nanorc' to a new '.nanorc' in the home directory
cat /etc/nanorc > "$HOME/.nanorc" # Copy the contents of '/etc/nanorc' to the new '.nanorc' file

# 7. Append the source statement to the end of '.bashrc'
echo "source ~/.dotfiles/etc/bashrc custom" >> "$HOME/.bashrc" # Append the source command to '.bashrc'
