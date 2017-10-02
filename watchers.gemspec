$:.push File.expand_path("../lib", __FILE__)

require "watchers/version"

Gem::Specification.new do |s|
  s.name        = "watchers"
  s.version     = Watchers::VERSION
  s.authors     = ["Ivan Nikolaev"]
  s.email       = ["nis@inrecolan.com"]
  s.homepage    = "https://github.com/destillat/watchers"
  s.summary     = "Redmine plugin for issue watchers configuration."
  s.description = "Redmine plugin for issue watchers configuration."
  s.license     = "Proprietary"

  s.files = Dir["{app,config,lib}/**/*", "README.md", "init.rb"]
  s.require_paths = ["lib"]
end
