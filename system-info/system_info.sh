#!/bin/bash

OUTPUT="Danielijaoye.txt"

echo "========================================" >> $OUTPUT
echo " SYSTEM INFORMATION SCRIPT OUTPUT" >> $OUTPUT
echo " Generated on: $(date)" >> $OUTPUT
echo "========================================" >> $OUTPUT
echo "" >> $OUTPUT

echo "----- DATE -----" >> $OUTPUT
date >> $OUTPUT
echo "" >> $OUTPUT

echo "----- HOSTNAME -----" >> $OUTPUT
hostname >> $OUTPUT
echo "" >> $OUTPUT

echo "----- ARCHITECTURE -----" >> $OUTPUT
arch >> $OUTPUT
echo "" >> $OUTPUT

echo "----- UNAME (FULL SYSTEM INFO) -----" >> $OUTPUT
uname -a >> $OUTPUT
echo "" >> $OUTPUT

echo "----- SYSTEM UPTIME -----" >> $OUTPUT
uptime >> $OUTPUT
echo "" >> $OUTPUT

echo "----- CURRENT USER -----" >> $OUTPUT
whoami >> $OUTPUT
echo "" >> $OUTPUT

echo "----- LOGGED-IN USERS (who) -----" >> $OUTPUT
who >> $OUTPUT
echo "" >> $OUTPUT

echo "----- USER ACTIVITY (w) -----" >> $OUTPUT
w >> $OUTPUT
echo "" >> $OUTPUT

echo "----- TOP PROCESSES (top - first 10 lines) -----" >> $OUTPUT
top -b -n 1 | head -n 10 >> $OUTPUT
echo "" >> $OUTPUT

echo "----- COMMAND HISTORY -----" >> $OUTPUT
history >> $OUTPUT
echo "" >> $OUTPUT

echo "=========== END OF REPORT ===========" >> $OUTPUT
echo "" >> $OUTPUT

