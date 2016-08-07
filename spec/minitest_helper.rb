require 'minitest/autorun'
require 'minitest/hooks/default'
require "minitest/reporters"

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class Minitest::HooksSpec
  around(:all) do |&block|
    DB.transaction(:rollback=>:always){super(&block)}
  end

  around do |&block|
    DB.transaction(:rollback=>:always, :savepoint=>true, :auto_savepoint=>true){super(&block)}
  end

  if defined?(Capybara)
    after do
      Capybara.reset_sessions!
      Capybara.use_default_driver
    end
  end

  include Rack::Test::Methods
  include Capybara::DSL

  Capybara.app = App

  def app
    App
  end
end