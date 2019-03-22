# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

# Ruby version should be controlled by .ruby-version file
# ruby '2.5.0'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.2.2', '>= 5.2.2.1'
# Use sqlite3 as the database for Active Record
gem 'sqlite3', '~> 1.3.6'
# Use Puma as the app server
gem 'puma', '~> 3.11'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'mini_racer', platforms: :ruby

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use ActiveStorage variant
# gem 'mini_magick', '~> 4.8'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.1.0', require: false

# Use jquery as the JavaScript library
gem 'jquery-rails'

# dotenv - For storing production configuration parameters
gem 'dotenv-rails', '~> 2.2.1'

gem 'quick_search-core', git: 'https://github.com/umd-lib/quick_search.git', branch: 'umd-develop'

# -Inserted by QuickSearch-

# QuickSearch searchers
#
# If you want to use different searchers, remove/replace these and be sure to remove them from
# your config/quick_search_config.yml file as well as references to them in your theme's search
# results page template

gem 'quick_search-open_library_searcher'
gem 'quick_search-archives_space_searcher',
    git: 'https://github.com/umd-lib/quick_search-archives_space_searcher.git',
    branch: 'develop'
gem 'quick_search-placeholder_searcher'

gem 'quick_search-drum_searcher',
    git: 'https://github.com/umd-lib/quick_search-drum_searcher.git', branch: 'develop'

gem 'quick_search-internet_archive_searcher',
    git: 'https://github.com/umd-lib/quick_search-internet_archive_searcher',
    branch: 'develop'

gem 'quick_search-fedora_searcher',
    git: 'https://github.com/umd-lib/quick_search-fedora_searcher.git', branch: 'develop'

gem 'quick_search-maryland_map_searcher',
    git: 'https://github.com/umd-lib/quick_search-maryland_map_searcher.git', branch: 'develop'

# -END Inserted by QuickSearch-

# -Inserted by QuickSearch-

# QuickSearch theme
#
# Remove the following if you want to use a different theme

gem 'quick_search-umd_theme',
    git: 'https://github.com/umd-lib/quick_search-umd_theme.git', branch: 'develop'

# END -Inserted by QuickSearch-

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'

  # Code analysis tools
  gem 'rubocop', '= 0.66.0', require: false
  gem 'rubocop-checkstyle_formatter', '~> 0.4.0', require: false
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  # Easy installation and use of chromedriver to run system tests with Chrome
  gem 'chromedriver-helper'
  gem 'simplecov', '~> 0.15.1', require: false
  gem 'simplecov-rcov', '~> 0.2.3', require: false
  gem 'minitest-reporters', '~> 1.1.19'
end

group :production do
  gem 'pg', '~> 0.18.4'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
