#!/usr/bin/env bash

#https://graysonkoonce.com/getting-the-current-branch-name-during-a-pull-request-in-travis-ci
export BRANCH=$(if [ "$TRAVIS_PULL_REQUEST" == "false" ]; then echo $TRAVIS_BRANCH; else echo $TRAVIS_PULL_REQUEST_BRANCH; fi)

docker login -u $DOCKER_USER -p $DOCKER_PASS
