require 'capybara/rspec'
require 'rspec'
require 'capybara'
require 'selenium-webdriver'


ENV['HTTP_PROXY'] = ENV['http_proxy'] = nil

Capybara.default_max_wait_time = 5

RSpec.configure do |config|
  config.include Capybara::DSL
  config.include RSpec::Matchers
  #config.include Capybara::RSpecMatchers
  config.example_status_persistence_file_path = 'failures/failure_log.txt'
  config.color = true
  config.formatter = :documentation
end

