$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "confirmable/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "confirmable"
  s.version     = Confirmable::VERSION
  s.authors     = ["Mike Bannister"]
  s.email       = ["mikebannister@gmail.com"]
  s.homepage    = "https://github.com/mikebannister/confirmable"
  s.summary     = "Progressively enhanced confirmation dialogs for Rails actions"
  s.description = "Progressively enhanced confirmation dialogs for Rails actions"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "capybara"
  s.add_development_dependency "launchy"
end
