
name 'riyic'
friendly_name "Riyic Client"
maintainer 'Javier Gomez <alambike@gmail.com>'
homepage 'https://riyic.com'

install_dir     "/opt/chef"

build_iteration 1
build_version do
  # Use chef to determine the build version
  source :git, from_dependency: 'chef'

  # Output a SemVer compliant version string
  output_format :semver
end

#override :cacerts, version: '2014.08.20'
override :bundler,        version: "1.7.2"
override :ruby,           version: "2.1.4"
override :rubygems,       version: "2.4.1"

override :chef, version: "11.16.4"

# creates required build directories
dependency 'preparation'

# riyic dependencies/components
dependency "chef"

# instalamos a nosa gema
dependency "lambom"

# instalamos a gema de mysql
dependency "mysql-client"
dependency "mysql-gem"

# instalamos a gema de postgresql
override :postgresql, 	version: "9.3.4"
dependency "postgresql"
dependency "pg-gem"


# version manifest file
dependency 'version-manifest'

exclude '**/.git'
exclude '**/bundler/git'
exclude '**/bundler/gems'

#exclude '**/share'

