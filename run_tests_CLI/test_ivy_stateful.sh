#!/bin/bash -e
export REDIS_URL="$3"
export REDIS_PASSWD="$4"
echo $REDIS_URL
docker run --rm -v "$(pwd)":/ivy -v "$(pwd)"/.hypothesis:/.hypothesis unifyai/ivy:latest python3 -m pytest --backend "$1" ivy_tests/test_ivy/test_stateful/"$2".py
