#!/bin/bash

function readme {
  export GITHUB_ACCESS_TOKEN=$1
  cat $1
  pwd
  cd .. && cd .. && cd ..
  git clone https://$1@github.com/clouddrove/genie.git
  pwd
  cd /home/runner/work/ajay-testing/ajay-testing
  make packages/install/gomplate
  make readme
}