#! /bin/bash
# from dpeticol's dotfiles, with mods

ignore=( install.sh uninstall.sh .git .gitmodules README.mdown backups )

DIR=~/dotfiles
OS=$(uname -s)

cd $DIR

if [ ! -e ${DIR}/backups ]; then
  mkdir backups
fi

# Install dependencies
if [ "$OS" = "Linux" ]; then
  sudo apt-get install build-essential cmake python-dev libclang-dev markdown smartypants multimarkdown || (sudo pacman -Syu wget gvim base-devel cmake python2 python2-pip clang python-markdown fakeroot jshon expac bash-completion && wget https://aur.archlinux.org/packages/pa/packer/PKGBUILD && makepkg && sudo pacman -U packer-*.pkg.tar.xz && sudo packer -S python2-smartypants multimarkdown && pip2 install rauth) || brew -v bundle

  rm -rf PKGBUILD* packer-*.pkg.tar.xz packer/ pkg/ src/
fi

if [ "$OS" = "Darwin" ]; then
  brew -v bundle
  sudo bash -c "echo `which bash` >> /etc/shells"
  chsh -s `which bash`
fi

sudo `which pip3` install neovim

git clone https://github.com/ryuone/nenv.git ~/.nenv

bash < <(curl -s https://raw.githubusercontent.com/mattreduce/oblique-fortunes/master/get)
rm $DIR/oblique-fortunes

touch agignore bashrc_p

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

mkdir -p ~/.config
ln -s ~/.vim ~/.config/nvim
ln -s ~/.bashrc ~/.bash_profile

# Install Vundle and packages
if [ ! -e ${DIR}/vim/bundle/vundle ]; then
  git clone https://github.com/gmarik/vundle ${DIR}/vim/bundle/vundle
  vim +BundleInstall +qa
  vim +UpdateRemotePlugins +qa
fi

# Compile ctrlp-cmatcher
if [ ! -e ${DIR}/vim/bundle/ctrlp-cmatcher/autoload/build/lib* ]; then
  cd ${DIR}/vim/bundle/ctrlp-cmatcher

  if [ "$OS" = "Darwin" ]; then
    CFLAGS=-Qunused-arguments
    CPPFLAGS=-Qunused-arguments
  fi

  ./install.sh
fi
