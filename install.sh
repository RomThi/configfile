#!/bin/bash

#List contains config file to copy and rename
configFileList=( bashrc bash_profile vimrc )
configDirectoryList= ( )

#Install config file
echo 'Installing config file'

#Create symbolic link to file in array
index=0
currentDir=$(pwd)"/"
while [ $index -lt ${#configFileList[@]} ]
do
  if [ -e ${configFileList[index]} ]
  then
     echo 'Copy '${configFileList[index]}
     ln -s $currentDir${configFileList[index]} ~/.${configFileList[index]}
  fi
  ((index++))
done

#Create symbolic link to config folder register in array
while [ $index -lt ${#configDirectoryList[@]} ]
do
  if [ -d ${configDirectoryList[index]} ]
  then
     echo 'Copy '${configDirectoryList[index]}
     ln -s $currentDir${configDirectoryList[index]} ~/.${configDirectoryList[index]}
  fi
  ((index++))
done

#Install Pathogen for vim
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
        curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

echo 'Done'
