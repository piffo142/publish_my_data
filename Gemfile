source "http://rubygems.org"

# Declare your gem's dependencies in publish_my_data.gemspec.
# Bundler will treat runtime dependencies like base dependencies, and
# development dependencies will be added by default to the :development group.
gemspec

# Declare any dependencies that are still in development here instead of in
# your gemspec. These might include edge Rails or gems from your path or
# Git. Remember to move these dependencies to your gemspec before releasing
# your gem to rubygems.org.

# To use debugger
# gem 'debugger'

# uncomment this to use local verison of tripod.
#gem 'tripod', path: '../tripod'

group :test, :development do
  gem "rspec-rails", "~> 2.0"
  gem "fuubar" # RSpec formatter
  gem "factory_girl_rails", "~> 4.0"
  gem "capybara"
  gem "launchy" # For Capybara's save_and_open_page
  gem "ruby-prof"
  gem "awesome_print", require: "ap"
  gem "poltergeist"
  gem "term-ansicolor"
end

group :install_only do
  gem "pry"

  gem "guard"
  gem "guard-rspec"
  gem "rb-fsevent"
  gem "growl"
  gem "terminal-notifier-guard"

  gem "spring"
end
