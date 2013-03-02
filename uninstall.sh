#! /bin/bash
# from dpeticol's dotfiles, with mods

ignore=( install.sh uninstall.sh .git .gitmodules README.mdown backups )

DIR=~/dotfiles

cd $DIR
for filename in * 
do
    # check if the file should be ignored
    shouldIgnore=false
    for ignorename in ${ignore[@]} 
    do
        if [[ $filename == $ignorename ]]
        then
            shouldIgnore=true
        fi
    done

    # if you shouldn't ignore and the file is a symlink
    if [ $shouldIgnore == false -a -L ~/.$filename ]
    then
        # Delete the symlink
        echo deleted ${filename}
        rm -rf ~/.$filename

        # if the file exists as a backup, restore the backup
        if [ -e $DIR/backups/.$filename ]
        then
            echo ${filename} restored from ${DIR}/backups/${filename}
            mv $DIR/backups/.$filename ~/
        fi
    fi
done

# update the submodules
git submodule update --init
