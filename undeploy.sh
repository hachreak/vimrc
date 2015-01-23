#!/bin/sh

SCRIPT_DIR=`readlink -f $0`
DIR=`dirname $SCRIPT_DIR`
# backup directory
BCK=$HOME/.vim.backup

cd ~/
# Restore old vimrc file
[ -h ~/.vimrc ] && [ -f $BCK/.vimrc ] && rm ~/.vimrc && cp $BCK/.vimrc ~/.vimrc && echo "[Restore] $BCK/.vimrc"
# Unlink the bundles
for bundle in `ls $DIR/bundle/`; do
  # echo "[Unlink] bundle $bundle"
  [ -h ~/.vim/bundle/$bundle ] && rm ~/.vim/bundle/$bundle && echo "[Unlink] remove ~/.vim/bundle/$bundle"
done
