#!/usr/bin/env bash
#Oneline for full directory name see: https://stackoverflow.com/questions/59895/getting-the-source-directory-of-a-bash-script-from-within
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
docker build "$DIR/../" -t wikibase/wdqs:0.3.0 -t wikibase/wdqs:latest

if [ "$SHOULD_DOCKER_PUSH" = true ]; then
    docker push tarrow/wdqs:0.3.0
    docker push tarrow/wdqs:latest
fi
