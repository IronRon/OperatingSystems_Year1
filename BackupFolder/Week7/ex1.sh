#!/bin/bash

#1
#echo Shell Scripting is Fun!

#2
#var=$(echo Shell Scripting is Fun!)
#echo $var

#3
#hostvar=$(hostname)
#echo This script is running on $hostvar

#4
if [ -e file_path ]; then
    echo "file_path exists."
    if [ -w file_path]; then
       echo "You have permissions to edit file_path"
    else
        echo "You do NOT have permissions to edit file_path"
    fi
else
   echo "file_path does not exists."
fi

#5
PS3="Select an action from the menu: "

select opt in "Disk usage" "Uptime" "Users" "Quit"
do
    case $opt in
        "Disk usage")
            echo "$opt - " $(df)
            echo " ";;
        "Uptime")
           echo "$opt - " $(uptime)
           echo " ";;
        "Users")
           echo "$opt - " $(who)
           echo " ";;
        "Quit")
           echo "Goodbye!"
           break;;
        *)
           echo "Invalid option"
           echo " ";;
    esac
done