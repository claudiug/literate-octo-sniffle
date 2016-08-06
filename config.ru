dev = ENV['RACK_ENV'] == 'development'

#let see the logs if we are in dev mode
if dev
  require 'logger'
  logger = Logger.new($stdout)
end

require 'rack/unreloader'

Unreloader = Rack::Unreloader.new(:subclasses=>%w'Roda Sequel::Model', :logger=>logger, :reload=>dev){App}

Unreloader.require('app.rb'){'App'}

if dev
  run(Unreloader)
else
  run(App.freeze.app)
end