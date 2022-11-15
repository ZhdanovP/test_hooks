#!/bin/bash

cd $(dirname ${BASH_SOURCE[0]})

# cp -rf ./pre-commit ../.git/hooks/pre-commit
# cp -rf ./post-merge ../.git/hooks/post-merge
cp -rf ./commit-msg ../.git/hooks/commit-msg
chmod ug+x ../.git/hooks/commit-msg

if [ $? -eq 0 ]; then
 # copy ok
 exit 0
else
 # copy failed
 exit 1
fi
