#!/bin/bash

findMaxConsecutiveOnes() {
    count=0
    max_count=0

    for num in "$@"; do
        if [ "$num" -ne 1 ]; then
            max_count=$((max_count > count ? max_count : count))
            count=0
        else
            ((count++))
        fi
    done

    echo "$((max_count > count ? max_count : count))"
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

# Test case 1: Basic test with consecutive ones
input1=(1 1 0 1 1 1 0 1 1)
output1=$(findMaxConsecutiveOnes "${input1[@]}")
assert "$output1" "3"

# Test case 2: No consecutive ones
input2=(0 0 0 0 0 0)
output2=$(findMaxConsecutiveOnes "${input2[@]}")
assert "$output2" "0"

# Test case 3: Consecutive ones at the beginning
input3=(1 1 1 0 0 1 0 0)
output3=$(findMaxConsecutiveOnes "${input3[@]}")
assert "$output3" "3"

# Test case 4: Consecutive ones at the end
input4=(0 0 1 0 1 1 1)
output4=$(findMaxConsecutiveOnes "${input4[@]}")
assert "$output4" "3"
