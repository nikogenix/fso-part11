#!/bin/bash

#url="http://localhost:5000/health"
url="https://rough-surf-7755.fly.dev/health"

response=$(curl -s "$url")

expected_value="ok"

if [ "$response" = "$expected_value" ]; then
    echo "0"
    exit 0
else
    echo "1"
    exit 1
fi
