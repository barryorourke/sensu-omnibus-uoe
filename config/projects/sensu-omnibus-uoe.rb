#
# Copyright 2019 YOUR NAME
#
# All Rights Reserved.
#

name "sensu-omnibus-uoe"
maintainer "barry@barryorourke.uk"
homepage "https://github.com/barryorourke/sensu-omnibus-uoe"
license "MIT"

# /opt/sensu-omnibus-uoe 
install_dir "#{default_root}/#{name}"

skip_transitive_dependency_licensing = true

build_version "0.2.0"
build_iteration 1

# Creates required build directories
dependency "preparation"

# override Ruby versions to match Sensu Classic
override "sensu-omnibus-uoe", version: build_version
override "ruby", version: "2.5.3"
override "rubygems", version: "2.7.6"

# sensu-omnibus-uoe dependencies/components
dependency "sensu-omnibus-uoe"

# Version manifest file
#dependency "version-manifest"

exclude "**/.git"
exclude "**/bundler/git"
