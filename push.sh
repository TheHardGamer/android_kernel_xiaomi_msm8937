#!/bin/sh

setup_git() {
  git config --global user.email "travis@travis-ci.org"
  git config --global user.name "Travis CI"
}

commit_website_files() {
  git checkout -b cm14.1
  git add out
  git commit --message "Travis build: $TRAVIS_BUILD_NUMBER"
}

upload_files() {
  git remote add origin-pages https://63e5d75df5bbe13d140ded5ae320b884cb008751@github.com/varunhardgamer/TheRagingBeast_TestBuilds.git > /dev/null 2>&1
  git push origin master 
}

setup_git
commit_website_files
upload_files
