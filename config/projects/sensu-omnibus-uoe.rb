#
# Copyright 2019 YOUR NAME
#
# All Rights Reserved.
#

name "sensu-omnibus-uoe"
maintainer "barry@barryorourke.uk"
homepage "https://CHANGE-ME.com"

# Defaults to C:/sensu-omnibus-uoe on Windows
# and /opt/sensu-omnibus-uoe on all other platforms
install_dir "#{default_root}/#{name}"

build_version Omnibus::BuildVersion.semver
build_iteration 1

# Creates required build directories
dependency "preparation"

# override Ruby versions to match Sensu Classic
override "ruby", version: "2.4.4"
override "rubygems", version: "2.6.10"

# sensu-omnibus-uoe dependencies/components
dependency "sensu-omnibus-uoe"

# Version manifest file
#dependency "version-manifest"

exclude "**/.git"
exclude "**/bundler/git"
