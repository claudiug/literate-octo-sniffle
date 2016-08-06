require 'roda'
require 'tilt/erubis'
require 'rack/unreloader'
require 'sequel'

require_relative 'models'

class App < Roda

  route do |r|
    r.root do
      TemplateEmail.db.methods.to_s
    end
  end
end