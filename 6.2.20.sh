#6.2.20 Ensure all users’ home directories exist
#file was named itsma-p02-05.sh
#starting of script:

#!/bin/bash

echo
echo "Audit Title: Ensure all users' home directories exist"
echo
echo "This will take a while, please wait a moment..."
echo

checkexit=$(grep -E -v '^(halt|sync|shutdown)' /etc/passwd | awk -F: '($7 != "'"$(which nologin)"'" && $7 != "/bin/false") { print $1 " " $6 }')

if [ -n "$checkexit" ]; then
  echo "Non-Compliance?: Yes"
  echo "Details: See below"
  echo
  echo "Output of command:"
  echo
  echo "$checkexit" | while read -r user dir; do if [ ! -d "$dir" ]; then echo "The home directory ($dir) of user $user does not exist."
  fi
  done
  echo
  echo "Note: There should be no output returned if it is compliant."
  echo
else
  echo "Non-Compliance?: No"
fi

