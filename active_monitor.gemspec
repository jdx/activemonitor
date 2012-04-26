$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "active_monitor/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "active_monitor"
  s.version     = ActiveMonitor::VERSION
  s.authors     = ["Jeff Dickey"]
  s.email       = ["jeff@dickey.xxx"]
  s.homepage    = "http://github.com/dickeyxxx/activemonitor"
  s.summary     = "Monitors Rails apps performance live"
  s.description = "What gets measured gets improved."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.3"
  s.add_dependency "jquery-rails"
  s.add_dependency "redis"
  s.add_dependency "coffee-script"
  s.add_dependency "sass-rails", "~> 3.1"
  s.add_dependency "bootstrap-sass"
  s.add_dependency "flot-rails"

  s.add_development_dependency 'therubyracer'
  s.add_development_dependency('sqlite3-ruby') unless RUBY_PLATFORM == 'java'
  s.add_development_dependency('jdbc-sqlite3') if RUBY_PLATFORM == 'java'
  s.add_development_dependency('activerecord-jdbcsqlite3-adapter') if RUBY_PLATFORM == 'java'

  s.add_development_dependency('rspec-rails')
end
