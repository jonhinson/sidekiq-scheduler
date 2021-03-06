$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "sidekiq-scheduler/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "sidekiq-scheduler"
  s.version     = SidekiqScheduler::VERSION
  s.authors     = ["Morton Jonuschat"]
  s.email       = ["yabawock@gmail.com"]
  s.homepage    = "https://github.com/yabawock/sidekiq-scheduler"
  s.summary     = "Light weight job scheduling extension for Sidekiq"
  s.description = "Light weight job scheduling extension for Sidekiq that adds support for queueing items in the future."

  s.executables   = ['sidekiq-scheduler']
  s.files = Dir["{app,bin,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "sidekiq", ">= 0.9.0"

  s.add_development_dependency "rake"
  s.add_development_dependency "timecop"
end
