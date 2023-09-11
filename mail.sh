#!/bin/bash

# anyone in our project can call this script with args
# mail.sh TO_ADDRESS SUBJECT BODY TEAM_NAME ALERT_TYPE
TO_ADDRESS=$1
SUBJECT=$2
BODY=$(sed -e 's/[]\/$*.^[]/\\&/g' <<< $3)
echo "escape content: $BODY"
TEAM_NAME=$4
ALERT_TYPE=$5

# echo "all args: $@"

FINAL_BODY=$(sed -e "s/TEAM_NAME/$TEAM_NAME/g" -e "s/ALERT_TYPE/$ALERT_TYPE" -e "s/MESSAGE/$BODY/g" template.html)

echo "$FINAL_BODY" | mail -s "$SUBJECT" $TO_ADDRESS