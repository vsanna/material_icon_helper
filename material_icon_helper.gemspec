$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "material_icon_helper/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "material_icon_helper"
  s.version     = MaterialIconHelper::VERSION
  s.authors     = ["Ryu Ishikawa"]
  s.email       = ["cvcl0808@gmail.com"]
  s.homepage    = "https://github.com/vsanna/material_icon_helper"
  s.summary     = "material_icon_helper"
  s.description = "material_icon_helper"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.0.0"

  s.add_development_dependency "sqlite3"
end
