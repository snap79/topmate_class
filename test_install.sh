#!/bin/bash

nginx_endpoint="https://www.googles.com"

response=$(curl -s -o /dev/null -w "%{http_code}" "$nginx_endpoint")

if [ "$response" -eq 200 ]; then
    echo "Test Passed: Nginx endpoint is reachable."
else
    echo "Test Failed: Nginx endpoint is not reachable. HTTP Response: $response"
fi
