
name 'riyic'
friendly_name "Riyic Client"
maintainer 'Javier Gomez <alambike@gmail.com>'
homepage 'https://riyic.com'

install_dir     "/opt/riyic"
build_version   Omnibus::BuildVersion.semver
build_iteration 1

override :ruby, version: "2.1.3"
override :'chef-gem', version: "11.16.4"

# creates required build directories
dependency 'preparation'

# riyic dependencies/components
dependency "chef-gem"
dependency "ohai" if ENV["OHAI_GIT_REV"]

#dependency "berkshelf"
dependency "lambom"

# version manifest file
dependency 'version-manifest'

exclude '\.git*'
exclude 'bundler\/git'
