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