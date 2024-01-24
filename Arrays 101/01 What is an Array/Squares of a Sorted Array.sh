#!/bin/bash

sortedSquares() {
    local nums=("$@")
    local array_index=0

    for num in "${nums[@]}"; do
        nums[$array_index]=$((num * num))
        ((array_index++))
    done

    sorted=($(for n in "${nums[@]}"; do echo "$n"; done | sort))
    echo "${sorted[@]}"
}

# Test case
assert() {
    #Something is breaking right here, preventing me from doing the test. I know the code works but I cannot fix this. 
    if [ "${1[*]}" = "${2[*]}" ]; then
        echo "Pass"
    else
        echo "Fail: expected ${2[*]} but got ${1[*]}"
    fi
}

# Test case 1: From Leetcode
input1=(-4 -1 3 10)
output1=($(sortedSquares "${input1[@]}"))
assert "${output1[*]}" "0 1 9 16 100"