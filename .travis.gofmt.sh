#!/bin/bash

if [[ -n $(find . -name '*.go' -type f -exec gofmt -l {} \;) ]]; then
    echo "Go code is not formatted:"
    gofmt -d .
    exit 1
fi