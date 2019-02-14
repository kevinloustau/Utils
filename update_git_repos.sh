#!/bin/bash

CUR_DIR=$(pwd)

echo "\n\033[1mPulling in latest changes for all repositories...\033[0m\n"

for i in $(find . -name ".git" | cut -c 3-); do
    echo "";
    echo "\033[33m"+$i+"\033[0m";

    # We have to go to the .git parent directory to call the pull command
    cd "$i";
    cd ..;

    git pull origin master;
    
    # lets get back to the CUR_DIR
    cd $CUR_DIR
done

echo "\n\033[32mComplete!\033[0m\n"
