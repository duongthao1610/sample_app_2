source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "2.5.1"

gem "rails", "~> 5.2.1"
gem "puma", "~> 3.11"
gem "sass-rails", "~> 5.0"
gem "uglifier", ">= 1.3.0"

gem "coffee-rails", "~> 4.2"
gem "turbolinks", "~> 5"
gem "jbuilder", "~> 2.5"
gem "bootsnap", ">= 1.1.0", require: false
gem "bootstrap-sass", "3.3.7"
gem "bcrypt", "3.1.12"
gem "config"
gem "jquery-rails"
gem "ffaker"
gem "kaminari"
gem "bootstrap-kaminari-views"
gem "carrierwave"
gem "mini_magick"

group :development, :test do
  gem "sqlite3", "1.3.13"
  gem "byebug", platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem "pry"
  gem "web-console", ">= 3.3.0"
  gem "listen", ">= 3.0.5", "< 3.2"
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
end

group :test do
  gem "capybara", ">= 2.15"
  gem "selenium-webdriver"
  gem "chromedriver-helper"
end

group :production do
  gem "pg"
  gem "fog"
end

gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]
