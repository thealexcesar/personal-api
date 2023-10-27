# frozen_string_literal: true

source 'https://rubygems.org'

ruby '3.1.2'
gem 'rails', '~> 7.1.1'

gem 'bootsnap', require: false
gem 'pg', '~> 1.1'
gem 'puma', '>= 5.0'
gem 'rack-cors'
gem 'rswag-api'
gem 'rswag-ui'
gem 'tzinfo-data', platforms: %i[mswin mswin64 mingw x64_mingw jruby]

# gem "bcrypt", "~> 3.1.7"
# gem "image_processing", "~> 1.2"
# gem "jbuilder"
# gem "kredis"
# gem "redis", ">= 4.0.1"

group :development, :test do
  gem 'debug', platforms: %i[mri mswin mswin64 mingw x64_mingw]
  gem 'factory_bot_rails', '~> 6.2'
  gem 'ffaker', '~> 2.23'
  gem 'pry', '~> 0.14.1'
  gem 'rspec-rails'
  gem 'rswag-specs'
  gem 'rubocop', '~> 1.57', '>= 1.57.1', require: false
end

group :development do
  # gem "spring"
  gem 'error_highlight', '>= 0.4.0', platforms: [:ruby]
end

group :test do
  gem 'simplecov', '~> 0.12.0'
end
