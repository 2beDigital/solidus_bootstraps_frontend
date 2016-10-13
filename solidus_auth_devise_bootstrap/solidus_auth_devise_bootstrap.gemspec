# encoding: UTF-8
Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'solidus_auth_devise_bootstrap'
  s.version     = '0.1.0'
  s.summary     = 'Switches out Spree Devise''s frontend for a bootstrap 3 powered frontend'
  s.description = s.summary

  s.required_ruby_version = '>= 1.9.3'
  s.author      = 'Noel'
  s.email       = 'noel@2bedigital.com'
  s.homepage    = 'http://www.2bedigital.com'
  s.license     = %q{BSD-3}

  s.files        = `git ls-files`.split("\n")
  s.test_files   = `git ls-files -- spec/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_runtime_dependency 'solidus_auth_devise'
  s.add_runtime_dependency 'solidus_bootstrap'

  s.add_development_dependency 'sqlite3'
  s.add_development_dependency 'pg'
  s.add_development_dependency 'sass-rails', '~> 5.0.0'
  s.add_development_dependency 'coffee-rails', '~> 4.1.0'
  s.add_development_dependency 'rspec-rails', '~> 3.0.0'
  s.add_development_dependency 'factory_girl', '~> 4.4'
  s.add_development_dependency 'email_spec', '~> 1.5.0'
  s.add_development_dependency 'ffaker'
  s.add_development_dependency 'shoulda-matchers', '~> 2.6.2'
  s.add_development_dependency 'capybara', '~> 2.4.1'
  s.add_development_dependency 'database_cleaner', '~> 1.2.0'
  s.add_development_dependency 'selenium-webdriver'
  s.add_development_dependency 'poltergeist', '~> 1.5.0'
  s.add_development_dependency 'launchy'
  s.add_development_dependency 'simplecov', '~> 0.9.0'
  s.add_development_dependency 'pry'
end
