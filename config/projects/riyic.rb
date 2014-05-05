name "riyic"
maintainer "Riyic"
homepage "riyic.com"

replaces        "riyic"
install_path    "/opt/riyic"

build_version   Omnibus::BuildVersion.new.version_tag
build_iteration 1

# creates required build directories
dependency "preparation"

# riyic dependencies/components
# dependency "somedep"

# version manifest file
dependency "version-manifest"

# seteamos versiond e chef
ENV["CHEF_GIT_REV"] = "11-stable"
dependency "chef"
dependency "ohai" if ENV["OHAI_GIT_REV"]
dependency "berkshelf"

#dependency "test-kitchen"
#dependency "foodcritic"

#lambom ao final de todo, xa que ten dependencias da anteriores gemas
dependency "lambom"

exclude "\.git*"
exclude "bundler\/git"
