#!/bin/bash

findNumbers() {
    result=0

    for num in "$@"; do
        count=$(echo "$num" | grep -o . | wc -l)

        if [ $((count % 2)) -eq 0 ]; then
            ((result++))
        fi
    done

    echo "$result"
}