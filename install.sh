#! /bin/bash
# from dpeticol's dotfiles, with mods

ignore=( install.sh uninstall.sh .git .gitmodules README.mdown backups )

DIR=~/dotfiles

cd $DIR
mkdir backups/
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

    # if you shouldn't ignore, and it's not already linked
    if [ $shouldIgnore == false -a ! -L ~/.$filename ]
    then
        # move old versions moved to backup dir
        if [ -e ~/.$filename ]
        then
            echo ${filename} moved to ${DIR}/backups/${filename}
            mv ~/.$filename $DIR/backups/
        fi

        # create the link
        echo new link ~/.${filename} to ${DIR}/backups/${filename}
        ln -s $DIR/$filename ~/.$filename
    fi
done

# update the submodules
git submodule update --init
