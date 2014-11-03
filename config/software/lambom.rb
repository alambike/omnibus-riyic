name "lambom"
default_version "get_rid_of_berkshelf"
relative_path "lambom"

dependency "ruby"
dependency "rubygems"
dependency "curl"

# v4.0 non necesita always build
#always_build true

#version ENV["LAMBOM_REV"] || "master" do
version "get_rid_of_berkshelf" do
	source :git => "git://github.com/RIYIC/lambom"
end

build do
  #gem "install #{name} -n #{install_dir}/bin --no-rdoc --no-ri -v #{version}"
  #gem "install #{name} -n #{install_dir}/bin --no-rdoc --no-ri"
  gem "install ruby-shadow -n #{install_dir}/bin --no-ri --no-rdoc", 
	:env => {"PATH" => "#{install_dir}/embedded/bin:#{ENV['PATH']}"}

  gem "build lambom.gemspec"
  gem ["install lambom*.gem",
       "-n #{install_dir}/bin",
       "--no-rdoc --no-ri"].join(" "), :env => {"PATH" => "#{install_dir}/embedded/bin:#{ENV['PATH']}"}

end
