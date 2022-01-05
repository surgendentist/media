#!/bin/bash 
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

    # Get User input 
    echo -e '\n\n'
    echo 'Hello !  I believe Alot of changes are done to the website, Deployed changes to above URL - Have a look and if you feel all good to proced type  "YES"  below and hit enter '
    echo -e '\n\n\n'
    read var1 
    echo 'proceed futher with changes'  
    
    # navigate to parent Dir 
    cd .. 


    # deletes the temp directory
    function cleanup {      
      rm -rf "$WORK_DIR"
      echo "Deleted temp working directory $WORK_DIR"
    }

    # register the cleanup function to be called on the EXIT signal
    trap cleanup EXIT

    # removing temp dir traces 
    rm -r -f $WORK_DIR

    # Removed cached dir
    git rm --cached $WORK_DIR

    # Added code to new branch 
    git add . 

    # Create commit 
    git commit -m $timestamp

    # push changes to develop branch 
    git push -u origin develop

    # created a branch 
    git checkout -b $timestamp

    # push code to new branch 
    git push -u origin $timestamp

    # chnaging back to develop branch 
    git checkout develop


else

    echo -e '\n$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ \n                                                                                    \n      You can not cheat me , Leave lazyness and Go Update file with all  chnages done and re-trigger  Deploy-dev-server.sh again                    \n                                                                                       \n$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ \n\n'

    sleep 10

fi


