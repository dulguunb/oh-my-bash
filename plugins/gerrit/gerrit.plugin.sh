#!/bin/bash

alias ammend_commit='git commit --amend'
alias pull_rebase='git pull --rebase'
alias submodule_update='git submodule update --recursive --init'
function push_gerrit(){
  `git push HEAD:refs/for/{$0}`
}
function review_gerrit(){
  `git push HEAD:refs/drafts/{$0}`
}
function cherry_pick(){
    `git checkout {$0}`
}

