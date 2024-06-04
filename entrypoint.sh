#!/bin/bash


if [ $# -gt 0 ]
  then
    echo "Trying to clone Git Repo $1 to /app"
    git clone $1 /app
fi
# start shell
/bin/bash
