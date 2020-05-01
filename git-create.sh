#!/bin/sh

#repo_name=$1
#username=$2

test -z $repo_name && echo "Repo name required." 1>&2 && exit 1

curl -u $username  https://api.github.com/user/repos -d "{\"name\":\"$repo_name\"}"

