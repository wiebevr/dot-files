#!/bin/sh

## Warn the user for existing files in the home directory,
## files that will be overwritten.
echo "This will replace the following files in your home directory" ~ ":"
for file in `ls`; do
    if [ $file == `basename $0` ]; then
        continue;
    fi
    if [[ -e ~/.$file ]]; then 
        echo "    - ."$file
    fi
done
echo -n "You will lose al content in these files. Continue? [N/y] "
read input
if [[ $input != "y" && $input != "Y" ]]; then
    exit 1;
fi

## Create symlinks
for file in `ls`; do
    if [ $file == `basename $0` ]; then
        continue;
    fi
    rm -rf "$HOME/.$file"
    ln -s "`pwd`/$file" "$HOME/.$file"
done



