#!/usr/bin/env bash
#Oneline for full directory name see: https://stackoverflow.com/questions/59895/getting-the-source-directory-of-a-bash-script-from-within
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
docker build "$DIR/../" -t tarrow/wdqs-frontend:latest

if [ "$SHOULD_DOCKER_PUSH" = true ]; then
    docker push tarrow/wdqs-frontend:latest
fi
