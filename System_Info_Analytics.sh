#!/bin/bash
# This script will return the following set of system information:
# -Hostname information:
echo  "***** HOSTNAME INFORMATION *****"
hostnamectl
echo ""
# -File system disk space usage:
echo  "***** FILE SYSTEM DISK SPACE USAGE *****"
df -h
echo ""
# -Free and used memory in the system:
echo  "***** FREE AND USED MEMORY *****"
free
echo ""
# -System uptime and load:
echo  "[***** SYSTEM UPTIME AND LOAD *****"
uptime
echo ""
# -Logged-in users:
echo  "***** CURRENTLY LOGGED-IN USERS *****"
who
echo ""
# -Top 5 processes as far as memory usage is concerned
echo -e "***** TOP 5 MEMORY-CONSUMING PROCESSES *****"
ps -eo %mem,%cpu,comm --sort=-%mem | head -n 6
echo ""

