source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.5'

# gem 'administrate', '0.8.1'
gem 'attr_extras'
# gem 'email_validator'
# gem 'faraday'
gem 'haml-rails'
gem 'high_voltage'
# gem "inifile"
# gem 'jwt'
gem 'nokogiri', '>= 1.10.8'
# gem 'omniauth-rails_csrf_protection'
# gem 'paranoia', '~> 2.2'
# gem 'pathspec'
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 6.0.3', '>= 6.0.3.2'
# Use sqlite3 as the database for Active Record
gem 'sqlite3', '~> 1.4'
# Use Puma as the app server
gem 'puma', '>= 4.3.5'
# gem 'record_tag_helper'
# Use SCSS for stylesheets
gem 'sass-rails', '>= 6'
gem 'sentry-raven'
gem 'sidekiq'
gem 'sinatra', '~> 2.0'
# gem 'uglifier', '>= 2.7.2'
# Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
gem 'webpacker'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.7'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Active Storage variant
# gem 'image_processing', '~> 1.2'

gem 'bootstrap', '~> 4.5.0'

gem 'reform-rails'
gem 'simple_form'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.2', require: false

group :production do
  gem 'rack-timeout'
end

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'bundler-audit', require: false
  gem 'dotenv-rails'
  gem 'foreman'
  gem 'rspec-rails', '>= 3.4'
  gem 'rubocop', '~> 0.78.0', require: false
  gem 'rubocop-rails', require: false
  gem 'rubocop-rspec', require: false
  gem 'ruby-prof'
  gem 'attractor'
  gem 'pry-byebug'
  gem 'pry-rails'
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 4.0.4'
  gem 'listen', '>= 3.0.5', '< 3.2'
end

group :test do
  gem 'capybara'
  gem 'factory_girl_rails'
  gem 'launchy'
  gem 'selenium-webdriver'
  gem 'shoulda-matchers'
  gem 'webmock'
  gem 'test-prof'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
