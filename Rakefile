# To Selectively Run RSpec Tests - https://emmanuelhayford.com/7-ways-to-selectively-run-rspec-tests/
require 'rubygems'
require 'rake/testtask'
require 'bundler'
require 'rspec/core/rake_task'
require 'rspec'

Bundler.setup(:default, :spec)
task :default => :spec

RSpec::Core::RakeTask.new(:spec) do |config|
  # config.pattern = "**/*_test.rb,**/*_spec.rb" # To run multiple files
  config.pattern = "performance_spec.rb"
  #config.rspec_opts = "--only-failures"
  config.verbose = false
  #config.rspec_opts = '--format progress' # To print the logs in console
  config.rspec_opts = '--format RspecHtmlReporter spec'
  # spec path/to/my_spec.rb -e "should be the correct answer"  - To run only single it block
end
