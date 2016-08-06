source 'https://rubygems.org'

ruby '2.2.2'

gem 'rack_csrf'                     #protect from csrf
gem 'tilt', '>= 2'                  #?
gem 'erubis'                        #?
gem 'roda'                          # roda web framework
gem 'sequel'                        # sequel DB
gem 'sequel_pg'                     # c binding for sequel
gem 'puma'                          # web server
gem 'multi_json'                    #json library

group :development, :test do
  gem 'rack-unreloader'
  gem 'guard-minitest'
end

group :test do
  gem 'capybara'
  gem 'minitest-capybara'
  gem 'rack-test'
  gem 'minitest'
  gem 'minitest-reporters'
  gem 'minitest-hooks', '>= 1.1.0'
end