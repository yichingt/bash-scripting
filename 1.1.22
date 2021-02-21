#1.1.22 Disable Automounting
#file was named itsma-p02-02.sh
#starting of script:

#!/bin/bash
#Note: if service is not installed, it means it is still compliant, since it needs to be disabled

echo
echo "Audit Title: Disable Automounting"

checkautomount=$(systemctl is-neabled autofs 2>/dev/null)

if [[ $checkautomount == "enabled" ]]; then
  echo "Non-Compliance?: Yes"
  echo "Details: See below"
  echo
  echo "Output of command:"
  echo "$checkautomount"
  echo
  echo "Note: Automounting SHOULD be disabled."
  echo
else
  echo "Non-Compliance?: No"
  echo
fi

