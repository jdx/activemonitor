$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "activemonitor/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "activemonitor"
  s.version     = Activemonitor::VERSION
  s.authors     = ["Jeff Dickey"]
  s.email       = ["jeff@dickey.xxx"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of Activemonitor."
  s.description = "TODO: Description of Activemonitor."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.3"
  s.add_dependency "jquery-rails"
  s.add_dependency "redis"
  s.add_dependency "twitter-bootstrap-rails"

  s.add_development_dependency('sqlite3-ruby') unless RUBY_PLATFORM == 'java'
  s.add_development_dependency('jdbc-sqlite3') if RUBY_PLATFORM == 'java'
  s.add_development_dependency('activerecord-jdbcsqlite3-adapter') if RUBY_PLATFORM == 'java'

  s.add_development_dependency('rspec-rails')
end
