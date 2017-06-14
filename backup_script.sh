#!/bin/bash
mkdir -p /home/backup/`date +%d-%m-%y-%H`/
rsync -raz /afl /home/backup/ 


#Crontab setting
##0nce every two hours
#* */2 * * * /root/backup_script.sh
