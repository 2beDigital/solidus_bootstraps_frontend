require 'bundler'
Bundler::GemHelper.install_tasks

require 'rspec/core/rake_task'
require 'spree/testing_support/common_rake'

RSpec::Core::RakeTask.new

task :default => :spec

desc 'Generates a dummy app for testing'
task :test_app do
  # Spree's install generator, which is used in the common:test_app task,
  # assumes that the extension has asset files, requiring them in the
  # all.js and all.css files of the dummy store; Rails throws an error
  # when it can't find the files. To avoid this issue, Spree is told to
  # generate a dummy store for spree_auth_devise, and after that the other
  # generators, currently just spree_frontend_bootstrap, are manually run.
  ENV['LIB_NAME'] = 'spree/auth'
  Rake::Task['common:test_app'].invoke("Spree::User")

  require "generators/spree_frontend_bootstrap/install/install_generator"
  SpreeFrontendBootstrap::Generators::InstallGenerator.start(["--auto-run-migrations"])
end
