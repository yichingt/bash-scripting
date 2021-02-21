#1.1.21 Ensure sticky bit is set on all world-writable directories
#file was named itsma-p02-01.sh
#starting of script:

#!/bin/bash

echo
echo "Audit Title: Ensure sticky bit is set on all world-writable directories"
echo
echo "This will take a while, please wait a moment..."
echo

checkstickybit=$(df --local -P | awk '{if (NR!=1) print $6}' | xargs -I '{}' find '{}' -xdev -type d \( -perm -002 -a ! -perm -1000 \) 2>/dev/null)

if [ -n "$checkstickbit" ]; then
  echo "Non-Compliance?: Yes"
  echo "Details: See below"
  echo
  echo "Output of command:"
  echo "$checkstickybit"
  echo
  echo "Note: There should be no output returned if it is compliant"
  echo
else
  echo "Non-Compliance?: No"
  echo
fi


