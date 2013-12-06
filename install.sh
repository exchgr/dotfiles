#! /bin/bash
# from dpeticol's dotfiles, with mods

ignore=( install.sh uninstall.sh .git .gitmodules README.mdown backups )

DIR=~/dotfiles
OS=$(uname -s)

cd $DIR

if [ ! -e ${DIR}/backups ]; then
  mkdir backups
fi

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

# Install Vundle and packages
if [ ! -e ${DIR}/vim/bundle/vundle ]; then
  git clone https://github.com/gmarik/vundle ${DIR}/vim/bundle/vundle
  vim +BundleInstall +qa
fi

# Compile YouCompleteMe
if [ "$OS" = "Linux" ]; then
  sudo apt-get install build-essential cmake python-dev libclang-dev
fi

if [ ! -e ${DIR}/vim/bundle/YouCompleteMe/python/ycm_core.so ]; then
  cd ${DIR}/vim/bundle/YouCompleteMe
  ./install.sh --clang-completer
  cd -
fi
