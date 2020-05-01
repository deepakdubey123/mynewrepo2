❯ cat git-create.sh
#!/bin/sh

#repo_name=$1
#username=$2

test -z $repo_name && echo "Repo name required." 1>&2 && exit 1

test -z $username && echo "username required." 1>&2 && exit 1

curl -u $username  https://api.github.com/user/repos -d "{\"name\":\"$repo_name\"}"
====================================================================================

export username=deepakdubey123

export repo_name=mynewrepo2

./git-create.sh

git init

git remote add origin "https://github.com/$username/$repo_name.git"

git add .

git commit -m "local commit"

git config --local credential.helper ""

git push -u origin master

===============================================================================

git commit -am "updated readme"

cat .git/config

git remote add ssh-origin "git@github.com:$username/$repo_name.git"

git remote -v

git push -u ssh-origin master

==================================


git remote remove ssh-origin


git remote add ssh-origin "git@github.com:$username/$repo_name.git"

git remote -v
