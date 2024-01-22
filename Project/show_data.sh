#!/usr/bin/bash 


#!/bin/bash
ls | grep -v " "*meta 
read -p "Show Data From Table: " nametable
if [ -f "$nametable" ]; then
    awk -F ':' '{print "Row " NR ": " $0}' "$nametable"
else
    echo "Error: Table '$nametable' Not Found."
fi



