$LOAD_PATH.unshift File.expand_path("../lib", __FILE__)

require 'watchers/version'

task :build do  
    system "gem build watchers.gemspec"
end

task :release => :build do  
    system "gem push watchers-#{Watchers::VERSION}"
end
