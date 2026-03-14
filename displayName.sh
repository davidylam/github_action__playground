#!/bin/bash
 
FILE="names.txt"
 
# Check if the file exists
if [[ -f "$FILE" ]]; then
    while IFS=',' read -r name category item3;
	do
         item3="${item3%$'\r'}"  # Remove trailing CR
		if [ "$item3" = "report" ]; then
          echo "$name"
		fi
    done < "$FILE"
else
    echo "Error: File '$FILE' not found."
    exit 1
fi