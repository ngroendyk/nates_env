#!/bin/bash
# Copy stuff and setup links

cp  "$PWD/.cscope_maps.vimrc" "$HOME"
cp -r "$PWD/.vim" "$HOME"
cp "$PWD/.vimrc" "$HOME"
cp * "$HOME"

sudo apt-get install exuberant-ctags
sudo apt-get install cscope

# Setup easy search stuff.
for f in $(find "$PWD/scripts_for_bin" -name '*'); do
    if [[ -d "$f" ]]; then
        echo "Skipping directory: $f"
        continue
    fi
    echo "Copying $f"
    sudo chmod 777 "$f"
    sudo cp "$f" /usr/bin
done

vim AnsiEsc.vba +so\ % +q

