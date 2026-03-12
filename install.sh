#!/bin/bash

DOTFILES_DIRECTORY="$HOME/dotfiles"
FILES_TO_LINK=(".zshrc" ".gitconfig")

cd "$DOTFILES_DIRECTORY" || exit

for FILE in "${FILES_TO_LINK[@]}"; do
    rm -rf "$HOME/$FILE"
    ln -s "$DOTFILES_DIRECTORY/$FILE" "$HOME/$FILE"
    echo "Successfully linked $FILE"
done

echo "Installation complete!"
