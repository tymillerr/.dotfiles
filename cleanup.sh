#!/bin/bash # Add the shebang for bash

# 3. Remove the '.nanorc' file from the home directory
rm -f "$HOME/.nanorc" # '-f' ensures no error if the file doesn't exist

# 4. Remove the specific line from '.bashrc' in the home directory
sed -i '/source ~\/.dotfiles\/etc\/bashrc custom/d' "$HOME/.bashrc" # Use sed to delete the matching line

# 5. Remove the '.TRASH' directory from the home directory
rm -rf "$HOME/.TRASH" # '-r' removes the directory recursively, '-f' forces the deletion without errors
