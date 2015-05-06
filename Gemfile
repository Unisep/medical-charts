ruby '2.2.1'

source 'https://rubygems.org' do
  gem 'rails', '4.2.0'

  gem 'pg'
  gem 'uglifier', '>= 1.3.0'
  gem 'enumerate_it'
  gem 'devise'
  gem 'devise-i18n-views', '~> 0.3.3'
  gem 'simple_form', '~> 3.1.0'
  gem 'responders', '~> 2.0.2'
  gem 'turbolinks'
  gem 'jbuilder', '~> 2.0'
  gem 'sass'
  gem 'cancancan', '~> 1.10'
  gem 'passenger'

  group :development, :test do
    gem 'parallel_tests'

    gem 'dotenv'
    gem 'byebug'
    gem 'rspec-rails', '~> 3.1.0'
    gem 'factory_girl_rails', '~> 4.0'
    gem 'forgery'
    gem 'awesome_print'
    gem 'shoulda-matchers', '~> 2.7.0'
    gem 'spring'
    gem 'capybara'
    gem 'database_cleaner'
    gem 'simplecov', require: false
    gem 'codeclimate-test-reporter', require: false
  end

  group :production do
    gem 'rails_12factor'
  end
end

source 'https://rails-assets.org' do
  gem 'rails-assets-materialize', '0.95.3'
  gem 'rails-assets-jquery', '2.1.3'
end
