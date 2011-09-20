$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "confirmable/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "confirmable"
  s.version     = Confirmable::VERSION
  s.authors     = ["TODO: Your name"]
  s.email       = ["TODO: Your email"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of Confirmable."
  s.description = "TODO: Description of Confirmable."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 3.1.0"

  s.add_development_dependency "sqlite3", "~> 1.3.4"
  s.add_development_dependency "rspec-rails", "~> 2.6.1"
  s.add_development_dependency "capybara", "~> 1.1.1"
end
