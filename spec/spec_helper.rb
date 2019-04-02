# Load RSpec and Capybara
require 'rspec'
require 'capybara/rspec'
require 'capybara/dsl'

#! All this code is doing is configuring Rspec and our tsts to be able to use all the methods and interactions Capybara provides
# ! The most imporant part of the configuration is the last line where we explicitly tell Capybara that that app were testing against i defined in config.ru

# Configure RSpec
RSpec.configure do |config|
  # Mixin the Capybara functionality into Rspec
  config.include Capybara::DSL
  config.order = 'default'
end

# Define the application we're testing
def app
  # Load the application defined in config.ru
  Rack::Builder.parse_file('config.ru').first
end

# Configure Capybara to test against the application above.
Capybara.app = app
