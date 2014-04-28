$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "favourite_object_paginative/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "favourite_object_paginative"
  s.version     = FavouriteObjectPaginative::VERSION
  s.authors     = ["TODO: Your name"]
  s.email       = ["TODO: Your email"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of FavouriteObjectPaginative."
  s.description = "TODO: Description of FavouriteObjectPaginative."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 4.0"
  s.add_dependency "favourite_object"


  s.add_development_dependency "sqlite3"
  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'capybara'
  s.add_development_dependency 'factory_girl_rails'

  s.test_files = Dir["spec/**/*"]
end
