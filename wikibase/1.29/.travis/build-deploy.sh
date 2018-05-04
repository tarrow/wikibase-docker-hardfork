#!/usr/bin/env bash
#Oneline for full directory name see: https://stackoverflow.com/questions/59895/getting-the-source-directory-of-a-bash-script-from-within
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
docker build "$DIR/../" -t tarrow/wikibase:1.29 -t tarrow/wikibase:legacy

if [ "$BRANCH" == "master" ]
then echo "pushing!" && docker push tarrow/wikibase:1.29 && docker push tarrow/wikibase:legacy
fi
