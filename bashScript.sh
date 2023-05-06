#!/bin/bash

PS3="Select an action from the menu: "

select opt in "List files" "Show free disk space" "Show system path" "Display command history" "Backup files" "Exit"
do
    case $opt in
        "List files")
            echo "$opt - " $(ls -a)
            echo " ";;
        "Show free disk space")
           echo "$opt - " $(df -H)
           echo " ";;
        "Show system path")
           echo "$opt - " $(pwd)
           echo " ";;
        "Display command history")
           echo "$opt - "
           cat ~/.bash_history
           echo " ";;
        "Backup files")
           echo "$opt - "
           read -p "Enter directory name to backup: " directory
           mkdir -p BackupFolder
           cp -r $directory BackupFolder
           echo "Contents of backup - "
           ls -R BackupFolder
           echo " ";;
        "Exit")
           echo "Goodbye!"
           break;;
        *)
           echo "Invalid option"
           echo " ";;
    esac
done