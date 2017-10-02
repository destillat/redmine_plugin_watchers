$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "watchers/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "watchers"
  s.version     = Watchers::VERSION
  s.authors     = ["Ivan Nikolaev"]
  s.email       = ["nis@inrecolan.com"]
  s.homepage    = "https://github.com/destillat/watchers"
  s.summary     = "Redmine plugin for issue watchers configuration."
  s.description = "Redmine plugin for issue watchers configuration."
  s.license     = "Proprietary"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md", "init.rb"]

  s.add_dependency "rails", "4.2.7.1"
  s.require_paths = ["lib"]
end
