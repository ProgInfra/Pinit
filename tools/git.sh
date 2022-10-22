#!/bin/bash

# Git Repository
git remote add gitlab git@gitlab.com:proginfra/pinit.git
git remote set-url --add --push origin git@gitlab.com:proginfra/pinit.git

git remote add github git@github.com:ProgInfra/Pinit.git
git remote set-url --add --push origin git@github.com:ProgInfra/Pinit.git

# Display Config
git remote show origin
git config --list
