
name 'riyic'
maintainer 'Javier Gomez <alambike@gmail.com>'
homepage 'https://riyic.com'

install_dir     '/opt/riyic'
build_version   Omnibus::BuildVersion.semver
build_iteration 1

# creates required build directories
dependency 'preparation'

# riyic dependencies/components
# seteamos versiond e chef
ENV["CHEF_GIT_REV"] = "11-stable"
dependency "chef-gem"
dependency "ohai" if ENV["OHAI_GIT_REV"]

#dependency "berkshelf"
dependency "lambom"

# version manifest file
dependency 'version-manifest'

exclude '\.git*'
exclude 'bundler\/git'
