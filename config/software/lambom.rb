name "lambom"
dependencies ["ruby", "rubygems","curl"]

always_build true

#version ENV["LAMBOM_REV"] || "master" do
version "get_rid_of_berkshelf" do
	source :git => "git://github.com/RIYIC/lambom"
end

build do
  #gem "install #{name} -n #{install_dir}/bin --no-rdoc --no-ri -v #{version}"
  #gem "install #{name} -n #{install_dir}/bin --no-rdoc --no-ri"

  gem "build lambom.gemspec"
  gem ["install lambom*.gem",
       "-n #{install_dir}/bin",
       "--no-rdoc --no-ri"].join(" "), :env => {"PATH" => "#{install_dir}/embedded/bin:#{ENV['PATH']}"}

end
