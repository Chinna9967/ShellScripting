#!/bin/bash
# this called array, used to store multiple values
PERSONS=("Ramesh" "Suresh" "sachin")
# inside array, wecan refer values with index which is starts from 0

echo "First person is :${PERSONS[0]}"

echo "all persona are : ${PERSONS[@]}"