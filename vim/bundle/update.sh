#!/usr/local/bin/bash
for i in *; do 
    if [ "$i" != "update.sh" ]; then
        echo Updating $i; 
        (cd $i; git pull --rebase); 
    fi
done
