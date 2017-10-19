#!/bin/bash

#List contains config file to copy and rename
configfilelist=( bashrc bash_profile vimrc )

#Install config file
echo 'Installing config file'

#Copy and rename file in array
index=0
while [ $index -lt ${#configfilelist[@]} ]
do
  if [ -e ${configfilelist[index]} ]
  then
     echo 'Copy '${configfilelist[index]}
     cp ${configfilelist[index]} ~/.${configfilelist[index]} 
  fi
  ((index++))
done
echo 'Done'
