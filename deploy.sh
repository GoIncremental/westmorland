#!/bin/bash

echo -e "\033[0;32mDeploying updates to Github...\033[0m"



# Add changes to git.
git add -A

# Commit changes.
msg="Added Content"
if [ $# -eq 1 ]
	then msg="$1"
fi
git commit -m "$msg"

# Push source and build repos.
git push git@github.com:GoIncremental/westmorland master
git push git@github.com:GoIncremental/westmorland gh-pages
