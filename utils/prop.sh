#! /bin/sh
if [ "$1" = "up" ]
then
    rsync -v /home/sjacoby/cabinet/thot.txt shackman@shackmanpress.com:~/backup
elif [ "$1" = "dwn" ]
then
    rsync -v shackman@shackmanpress.com:~/backup/thot.txt /home/sjacoby/cabinet/thot.txt
fi

