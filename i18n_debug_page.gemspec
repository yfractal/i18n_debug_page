$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "i18n_debug_page/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "i18n_debug_page"
  s.version     = I18nDebugPage::VERSION
  s.authors     = ["mike"]
  s.email       = ["yfractal@gmail.com"]
  s.homepage    = ""
  s.summary     = "i18n debug page"
  s.description = "Provide UI for debugging i18n"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", ">= 5.0"
  s.add_dependency 'i18n-debug', "~> 1.1.0"

  s.add_development_dependency "sqlite3"
end
