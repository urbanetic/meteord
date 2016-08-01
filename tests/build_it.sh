#!/bin/bash
docker build -t urbanetic/meteord:base ../base
docker build -t urbanetic/meteord:onbuild ../onbuild
docker build -t urbanetic/meteord:devbuild ../devbuild
#docker build -t urbanetic/meteord:binbuild ../binbuild
