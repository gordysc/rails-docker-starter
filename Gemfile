# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.2.0'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', require: false
# Authentication [https://github.com/heartcombo/devise]
gem 'devise'
# Pagination [https://github.com/ddnexus/pagy]
gem 'pagy'
# Audit history [https://github.com/paper-trail-gem/paper_trail]
gem 'paper_trail'
# Soft deletes [https://github.com/rubysherpas/paranoia]
gem 'paranoia'
# Use postgresql as the database for Active Record
gem 'pg'
# Use the Puma web server [https://github.com/puma/puma]
gem 'puma'
# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem 'rails'
# The original asset pipeline for Rails [https://github.com/rails/sprockets-rails]
gem 'sprockets-rails'
# Hotwire's modest JavaScript framework [https://stimulus.hotwired.dev]
gem 'stimulus-rails'
# Hotwire's SPA-like page accelerator [https://turbo.hotwired.dev]
gem 'turbo-rails'
# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem 'debug', platforms: %i[mri mingw x64_mingw]
  # Environment variables [https://github.com/bkeepers/dotenv]
  gem 'dotenv-rails'
  # Mock ActiveRecord generators [https://github.com/thoughtbot/factory_bot_rails]
  gem 'factory_bot_rails'
  # Fake data generators [https://github.com/faker-ruby/faker]
  gem 'faker'
  # Debugging [https://github.com/pry/pry]
  gem 'pry'
end

group :development do
  # Use console on exceptions pages [https://github.com/rails/web-console]
  gem 'web-console'
end

group :test do
  # Behavior Driven Testing (BDD) [https://github.com/rspec/rspec-rails]
  gem 'rspec-rails'
  # Simplified Rails testing [https://github.com/thoughtbot/shoulda-matchers]
  gem 'shoulda-matchers'
end
