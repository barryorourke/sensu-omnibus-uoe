#!/bin/sh

set -e

tar -cvf archive.tar *

docker build -f dockerfiles/centos-7 -t sensu-build-centos-7 .

vol="-v ${1-/tmp/assets}:/tmp/assets"
run='./sensu-build/docker_run.sh'
docker run --rm $env $vol sensu-build-centos-7 $run
