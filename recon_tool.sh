#!/bin/bash

# Colors for output
GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m' # No Color

LOGFILE="recon_report.txt"

echo -e "${GREEN}=========================================${NC}"
echo -e "${GREEN}   ALI'S AUTOMATED RECON & SYS TOOL      ${NC}"
echo -e "${GREEN}=========================================${NC}"

echo "1. System Health Check"
echo "2. Multi-Target Ping Scanner"
echo "3. Exit"
echo "-----------------------------------------"
read -p "Select an option (1-3): " CHOICE

if [ "$CHOICE" -eq 1 ]; then
    echo -e "\n[+] Generating System Health Report..." | tee -a $LOGFILE
    echo "Timestamp: $(date)" | tee -a $LOGFILE
    echo "RAM Usage:" | tee -a $LOGFILE
    free -h | tee -a $LOGFILE
    echo "Disk Usage:" | tee -a $LOGFILE
    df -h / | tee -a $LOGFILE
    echo -e "${GREEN}[SUCCESS] Report saved to $LOGFILE${NC}"

elif [ "$CHOICE" -eq 2 ]; then
    read -p "Enter targets separated by space (e.g. google.com github.com): " TARGETS
    echo -e "\n[+] Starting Ping Scan on: $TARGETS" | tee -a $LOGFILE
    
    for target in $TARGETS; do
        ping -c 1 $target > /dev/null 2>&1
        if [ $? -eq 0 ]; then
            echo -e "${GREEN}[ONLINE] $target reachable hai!${NC}" | tee -a $LOGFILE
        else
            echo -e "${RED}[OFFLINE] $target unreachable hai!${NC}" | tee -a $LOGFILE
        fi
    done
    echo -e "${GREEN}[SUCCESS] Scan finished. Results logged to $LOGFILE${NC}"

elif [ "$CHOICE" -eq 3 ]; then
    echo "Exiting Recon Tool. Goodbye Ali!"
    exit 0
else
    echo -e "${RED}[ERROR] Invalid Option Selected!${NC}"
fi
