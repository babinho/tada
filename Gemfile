source 'https://rubygems.org'

gem 'rails', '~>3.2'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

#gem 'sqlite3'
gem 'pg'


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2'
  gem 'coffee-rails', '~> 3.2'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'
gem 'haml'
gem "haml-rails"
gem 'twitter-bootstrap-rails'
gem 'devise'
gem 'simple_form'
gem 'acts_as_list'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
gem 'thin'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
group :development, :test do
  gem 'debugger'
  gem 'minitest-spec-rails'
  gem 'factory_girl_rails'
  gem 'spork'   # Spork caches rails so tests run fast.
  gem 'autotest-standalone' # The file '.autotest' makes sure the tests are run via test server (spork).
  gem 'autotest-rails-pure' # -pure gives us autotest without ZenTest gem.
  gem 'autotest-growl'      # growl notifications, complains a little bit if growl isn't installed
  gem 'autotest-fsevent'    # react to filesystem events, save your CPU
  gem 'spork-minitest'
end
