#!/bin/bash

FindNumbers() {
    result=0

    for num in "$@"; do
        count=$(echo "$num" | grep -o . | wc -l)

        if [ $((count % 2)) -eq 0 ]; then
            ((result++))
        fi
    done

    echo "$result"
}

#Leetcode does not have automated testing for Bash. Therefore, I created a test script for it. The test for this can be found as the same name  with "Bash Test" at the end of it

# Test cases
assert() {
    if [ "$1" = "$2" ]; then
        echo "Pass"
    else
        echo "Fail: expected $2 but got $1"
    fi
}

# Test case 1: From Leetcode, should be 2 (12 and 7896)
input1=(12 345 2 6 7896)
output1=$(FindNumbers "${input1[@]}")
assert "$output1" "2"

# Test case 2: From Leetcode, should be 1 (1771)
input2=(555 901 482 1771)
output2=$(FindNumbers "${input2[@]}")
assert "$output2" "1"

# Test case 3: There should be no even amount of digits in array
input3=(1 1 1 1 1 1)
output3=$(FindNumbers "${input3[@]}")
assert "$output3" "0"

# Test case 4: All numbers should be even in the array. Should be 5
input4=(10 10 11 10 11)
output4=$(FindNumbers "${input4[@]}")
assert "$output4" "5"