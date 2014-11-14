#!/bin/sh

DIR=`pwd`

# Backup vim configuration
BCK=$HOME/.vim.backup
[ -e "$BCK" ] && echo "[Backup] Backup directory already exists!"
[ ! -e "$BCK" ] && echo "[Backup] Start backup old vim environment." && mkdir $BCK
#[ -e "$HOME/.vim" ] && echo "[Backup] backup ~/.vim" && mv ~/.vim $BCK/
# backup only the first time
[ ! -e "$BCK" ] && [ -e "$HOME/.vimrc" ] && echo "[Backup] backup ~/.vimrc" && mv ~/.vimrc $BCK/

# Checkout plugins
git submodule init
git submodule update

# Create directories
[ ! -e "$HOME/.vim/bundle" ] && echo "[Create] ~/.vim/bundle" && mkdir -p ~/.vim/bundle

# Link the current vimrc
cd ~/
ln -sf "$DIR/vimrc" ~/.vimrc
# and the bundle
for bundle in `ls $DIR/bundle/`; do
  echo "[Link] bundle $bundle"
  ln -sf $DIR/bundle/$bundle ~/.vim/bundle
done

# Add git alias in .bashrc configuration
if [ -n "`grep "Enable hachreak vim alias" ~/.bashrc`" ]; then
  echo "[Warning] Vim alias already installed in ~/.bashrc"
else
  echo "Install vim alias"
  echo "# Enable hachreak vim alias" >> ~/.bashrc
  echo "if [ -f $DIR/vim_alias ]; then" >> ~/.bashrc
  echo "  . $DIR/vim_alias" >> ~/.bashrc
  echo "fi" >> ~/.bashrc
fi
