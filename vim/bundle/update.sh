#!/usr/local/bin/bash
for i in *; do 
    if [ -d "$i" ]; then
        echo Updating $i; 
        (cd $i; git pull --rebase); 
    fi
done
