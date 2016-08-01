#!/usr/bin/env bash

REPO=urbanetic/meteord
if [ "$TRAVIS_BRANCH" != "" ]; then
    BRANCH=$TRAVIS_BRANCH
else
    BRANCH=$(git rev-parse --abbrev-ref HEAD | sed 's#/#_#g' | tr '[:upper:]' '[:lower:]')
fi

docker tag $REPO:base $REPO:$BRANCH-base
docker tag $REPO:onbuild $REPO:$BRANCH-onbuild
docker tag $REPO:devbuild $REPO:$BRANCH-devbuild
docker tag $REPO:binbuild $REPO:$BRANCH-binbuild

docker rmi $REPO:base
docker rmi $REPO:onbuild
docker rmi $REPO:devbuild
docker rmi $REPO:binbuild
