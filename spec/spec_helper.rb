require File.expand_path("lib/project") # Setup project lib
require 'rack/test'

ENV['RACK_ENV'] = "test"

RSpec.configure do |config|
  config.include Rack::Test::Methods

  config.after(:each) do
  end
end