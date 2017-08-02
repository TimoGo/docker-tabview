#!/bin/sh

if [ -f "/data/$filename" ]
then
  /home/user/tabview/bin/tabview /data/$filename
else
  /home/user/tabview/bin/tabview $(ls /data/*csv | peco)
fi
