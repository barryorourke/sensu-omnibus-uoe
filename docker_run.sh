#!/bin/sh

set -e

[ -d sensu-build ] && cd sensu-build

bundle install --binstubs

git config --global user.email "barry@barryorourke.uk"
git config --global user.name "Barry O'Rourke"

/sensu-build/bin/omnibus build sensu-omnibus-uoe

cp /sensu-build/pkg/*.rpm /tmp/assets || true

