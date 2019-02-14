# encoding: UTF-8
Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'solidus_bootstrap'
  s.version     = '0.2.3'
  s.summary     = 'Switches out Solidus’s entire frontend for a bootstrap 3 powered frontend'
  s.description = s.summary
  s.required_ruby_version = '>= 2.2.0'

  s.author    = 'Noel'
  s.email     = 'noel@2bedigital.com'
  s.homepage  = 'http://www.2bedigital.com'

  s.files       = `git ls-files`.split("\n")
  s.test_files  = `git ls-files -- spec/*`.split("\n")
  s.require_paths = ['lib', 'frontend/lib', 'core/lib']
  s.requirements << 'none'

  s.add_runtime_dependency 'sass-rails', '>= 5.0'
  s.add_runtime_dependency 'bootstrap-sass',  '>= 3.3.5.1'
  s.add_runtime_dependency 'bootstrap-kaminari-views', '~> 0.0.5'

  s.add_runtime_dependency 'solidus_core', '~> 2.1'
  s.add_runtime_dependency 'solidus_frontend', '~> 2.1'
end
