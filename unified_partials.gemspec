$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "unified_partials/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "unified_partials"
  s.version     = UnifiedPartials::VERSION
  s.authors     = ["Sam Schenkman-Moore"]
  s.email       = ["samsm@samsm.com"]
  s.homepage    = "http://github.com/samsm/unified_partials"
  s.summary     = "Site-wide view partials made easier."
  s.description = "Offers a standard approach for consistent use of partials to display attributes."

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.0.0"

  s.add_development_dependency "sqlite3"
end
