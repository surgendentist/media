#!/bin/bash 

  # Create time stamp
  timestamp=$(date +"%Y-%m-%d-%H-%M-%S")

  # Added code to stage 
  git add .

  # Commited code with  the timestamp 
  git commit -m $timestamp

  # pushed new code to remote url 
  git push 

  # clear console 
  clear 

  ## code deployed to new url 
  echo -e '\n$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ \n                                                                                    \n                        https://surgendentist.github.io/                         \n                                                                                       \n$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ \n\n'

