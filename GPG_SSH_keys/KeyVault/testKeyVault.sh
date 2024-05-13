#!/bin/bash

#On mac for help
# security 
# find-generic-password -h

security add-generic-password -a "your_username" -s "WolframCloud" -w "your_password"
# because this is going to stderr, we need to redirect it to stdout. 
output=$(security add-generic-password -a "your_username" -s "WolframCloud" -w "your_password" 2>&1)

# Poor man's testing strategy. 
if [[ "$output" == *"already exists"* ]]; then
  echo "test passed"
  echo "find it back"
    output2=$(security find-generic-password -s "WolframCloud" -w)
    if [[ "$output2" == "your_password" ]]; then
      echo "Test Passed. Found existing entry."
    else
      echo "Test Failed. No existing entry found, new entry added or other error."
    fi
else
  echo "Test Failed. No existing entry found, new entry added or other error."
fi
