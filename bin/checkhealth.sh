#!/bin/bash
cd "$(dirname "$(dirname "$(readlink -f "$0")")")"
echo
echo "Updating Scoop Buckets"
echo
powershell.exe scoop update
echo
echo "Check for missing checkver or autoupdate handling"
echo
powershell.exe bin\\missing-checkver.ps1 | grep -v "\[C\]\[A\]"
echo
echo "Check the download urls are working"
echo
powershell.exe bin\\checkurls.ps1 | grep -v "\[0\] "
echo
echo "Check for version calculation problems (checkver)"
echo
powershell.exe bin\\checkver.ps1 2>/dev/null | grep couldn
