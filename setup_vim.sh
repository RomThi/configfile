#!/bin/bash

#Check if git is installed
hash git 2>/dev/null || { echo >&2 "I require git but it's not installed.  Aborting."; exit 127; }

#Install NerdTree
git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree


