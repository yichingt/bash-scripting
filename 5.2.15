#5.2.15 Ensure SSH warning banner is configured
#file was named itsma-p02-04.sh
#starting of script:

#!/bin/bash

echo
echo "Audit Title: Ensure SSH warning banner is configured"

checkbanner=$(sshd -T | grep banner)

if [[ $checkbanner == *"none"* ]]; then
  echo "Non-Compliance?: Yes"
  echo "Details: See below"
  echo
  echo "Output of command:"
  echo "$checkbanner"
  echo
  echo "Note: SSH warning banner should be configured"
  echo
else
  echo "Non-Compliance?: No"
  echo
fi

