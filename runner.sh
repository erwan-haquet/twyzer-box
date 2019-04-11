#!/usr/bin/env bash

dir="${PWD##*/}"
dir="$(tr [A-Z] [a-z] <<< "$dir")"

if [ ! -z $2 ]
then
    user=$2
    docker exec -ti --user ${user} docker_$1 bash
else
    user=root
    docker exec -ti docker_$1 bash
fi
