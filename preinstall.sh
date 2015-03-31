#!/bin/sh

os_version(){
  echo lsb_release -i|awk '{print $3}'
}

sudo apt-get update
sudo apt-get install build-essential make cmake python-dev exuberant-ctags tmux python-software-properties -y

echo installing vim 7.4..
if [ "`os_version`" != "Ubuntu" ]; then
  echo "Sorry.. only available for ubuntu.. T_T"
  exit 1
fi

sudo add-apt-repository ppa:fcwu-tw/ppa -y
sudo apt-get update
sudo apt-get install vim
