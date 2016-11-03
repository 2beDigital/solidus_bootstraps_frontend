# encoding: UTF-8
Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'solidus_bootstrap_frontend'
  s.version     = '0.1.0'
  s.summary     = 'Switches out Spree’s entire frontend for a bootstrap 3 powered frontend'
  s.description = s.summary

  s.author    = 'Noel'
  s.email     = 'noel@2bedigital.com'
  s.homepage  = 'http://www.2bedigital.com'
  s.license   = 'BSD-3'

  s.files = Dir['README.md', 'lib/**/*']
  s.require_path = 'lib'
  s.requirements << 'none'
  s.required_ruby_version     = '>= 2.2.0'

  s.add_runtime_dependency 'solidus_bootstrap'
  s.add_runtime_dependency 'solidus_auth_devise_bootstrap'
  s.add_runtime_dependency 'sass-rails', '>= 5.0'
  s.add_runtime_dependency 'bootstrap-sass', '~> 3.3', '>= 3.3.7'
end
