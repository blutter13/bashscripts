#!/bin/bash
USED=$(df --total | grep total | tail -c 7)
HNAME=$(uname -n)
echo "Total disk usage is $USED"
mail -s 'Total disk usage on $HNAME is $USED' test@sanitized.com <<< "Test"
#First script. Be sure to install mailutils and configure SSMTP before use.
