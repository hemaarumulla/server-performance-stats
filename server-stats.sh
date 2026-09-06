#!/bin/bash
echo "=================================="
echo " Server Performance Statistics"
echo "=================================="
echo ""
echo "CPU Usage:"

CPU_USAGE=$(top -bn1 | grep "Cpu(s)" | awk '{print 100 - $8}')

echo "Total CPU Usage: $CPU_USAGE%"
echo ""
echo "Memory Usage:"

TOTAL_MEMORY=$(free -m | awk '/Mem:/ {print $2}')
USED_MEMORY=$(free -m | awk '/Mem:/ {print $3}')
FREE_MEMORY=$(free -m | awk '/Mem:/ {print $4}')

MEMORY_PERCENTAGE=$(( USED_MEMORY * 100 / TOTAL_MEMORY ))

echo "Used: $USED_MEMORY MB ($MEMORY_PERCENTAGE%)"
echo "Free: $FREE_MEMORY MB"
echo "Total: $TOTAL_MEMORY MB"

# -----------------------------------------
# Disk Usage
# -----------------------------------------

echo ""
echo "Disk Usage:"

df -h --total | awk '/total/ {
    print "Total Disk: " $2
    print "Used Disk : " $3 " (" $5 ")"
    print "Free Disk : " $4
}'

# -----------------------------------------
# Top 5 Processes by CPU Usage
# -----------------------------------------

echo ""
echo "Top 5 Processes by CPU Usage:"
echo "------------------------------------------"

ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | head -n 6

# -----------------------------------------
# Top 5 Processes by Memory Usage
# -----------------------------------------

echo ""
echo "Top 5 Processes by Memory Usage:"
echo "------------------------------------------"

ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%mem | head -n 6
# -----------------------------------------
# Additional Server Information
# -----------------------------------------

echo ""
echo "Additional Server Information:"
echo "------------------------------------------"

echo "OS Version:"
cat /etc/os-release | grep "PRETTY_NAME" | cut -d '=' -f2 | tr -d '"'

echo ""
echo "Uptime:"
uptime -p

echo ""
echo "Load Average:"
uptime | awk -F'load average:' '{print $2}'

echo ""
echo "Logged-in Users:"
who | wc -l
