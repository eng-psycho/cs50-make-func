#!/bin/bash

# Ensure no targets end with .c
args=""
invalid_args=0
for arg; do
    case "$arg" in
        (*.c) arg=${arg%.c}; invalid_args=1;;
    esac
    args="$args $arg"
done
if [ $invalid_args -eq 1 ]; then
    echo "Did you mean 'make.sh$args'?"
    exit 1
fi

# Run make
if [[ -d "$1" ]]; then
    echo "$1 is a directory"
    exit 1
else
    cc $*.c -lcs50 -o $*
fi
