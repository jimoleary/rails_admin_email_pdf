$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "rails_admin_email_pdf/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "rails_admin_email_pdf"
  s.version     = RailsAdminEmailPdf::VERSION
  s.authors     = ["Jim OLeary"]
  s.email       = ["jim.oleary@gmail.com"]
  s.homepage    = "https://github.com/jimoleary/rails_admin_email_pdf"
  s.summary     = "Simple action to email pdf."
  s.description = "Action redirects to link that emails pdf."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 3.2.3"

#  s.add_development_dependency "sqlite3"
end
