#!/bin/bash

REPORT="server-audit-$(date +%Y%m%d-%H%M%S).txt"

{
    echo "================================="
    echo "       LINUX SERVER AUDIT"
    echo "================================="

    echo
    echo "DATE:"
    date

    echo
    echo "HOSTNAME:"
    hostname

    echo
    echo "SYSTEM UPTIME:"
    uptime

    echo
    echo "DISK USAGE:"
    df -h

    echo
    echo "MEMORY USAGE:"
    free -h

    echo
    echo "TOP 5 PROCESSES BY CPU:"
    ps -eo pid,comm,%cpu,%mem --sort=-%cpu | head -n 6

} > "$REPORT"

echo "Audit completed."
echo "Report saved to: $REPORT"
