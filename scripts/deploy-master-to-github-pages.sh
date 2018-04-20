#!/bin/bash

echo -e "\033[0;32mDeploying updates to GitHub...\033[0m"

# Choose master branch.
git checkout master 

# Remove previous build.
rm -rf public

# Build the project.
hugo -t beautifulhugo 

# Add changes to git.
git add public

# Commit changes.
msg="rebuilding site `date`"
if [ $# -eq 1 ]
          then msg="$1"
          fi
          git commit -m "$msg"

# create a local gh-pages branch containing the splitted output folder
git subtree split --prefix public -b gh-pages 

# force the push of the gh-pages branch to the remote gh-pages branch at origin
git push -f origin gh-pages:gh-pages 

# delete the local gh-pages because you will need it: ref
git branch -D gh-pages 

# Push source and build repos.
git push origin master
