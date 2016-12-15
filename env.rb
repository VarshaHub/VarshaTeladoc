require 'rbconfig'
require 'cucumber/formatter/unicode'

require 'capybara'
require 'capybara/dsl'
require "capybara/cucumber"
require  'rspec'

include RSpec::Matchers
include Common_functions
$timeout=50




Capybara.default_driver = :selenium
Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, :browser => :firefox)
end

Capybara.run_server = false

RSpec.configure do |config|
  config.include Capybara::DSL
end

World(Capybara)