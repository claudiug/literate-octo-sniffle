ENV["RACK_ENV"] = "test"
require_relative '../../app'
raise "test database doesn't end with test" unless DB.get{'foo_test'}

App.freeze

require 'capybara'
require 'capybara/dsl'
require 'rack/test'
include Rack::Test::Methods

def app
  App
end

require_relative '../minitest_helper'