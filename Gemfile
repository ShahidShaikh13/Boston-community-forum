source "https://rubygems.org"

ruby "3.2.2"

# Rails framework
gem "rails", "~> 8.0.2"

# Database
gem "pg", "~> 1.1"

# Asset pipeline
gem "sprockets-rails"
gem "sassc-rails"

# Authentication
gem "devise"

# Pagination
gem "kaminari"

# JavaScript
gem "importmap-rails"
gem "turbo-rails"
gem "stimulus-rails"

# Essential Rails gems
gem "puma", ">= 5.0"
gem "bootsnap", require: false
gem "jbuilder"
gem "tzinfo-data", platforms: %i[ windows jruby ]

# Development gems
group :development, :test do
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
end

group :development do
  gem "web-console"
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
  gem "webdrivers"
end
