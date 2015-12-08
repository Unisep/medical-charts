ENV['RAILS_ENV'] ||= 'test'

if ENV['CODECLIMATE_REPO_TOKEN']
  require 'codeclimate-test-reporter'
  CodeClimate::TestReporter.start
else
  require 'simplecov'

  SimpleCov.configure do
    coverage_dir File.join('.', 'tmp', 'code_analysis', 'coverage')
  end

  SimpleCov.start 'rails'
end

require 'spec_helper'
require File.expand_path('../../config/environment', __FILE__)
require 'rspec/rails'
require 'capybara/rspec'
require 'awesome_print'

Forgery.load_from! "#{Forgery.rails_root}/spec/support/forgery"

ActiveRecord::Migration.maintain_test_schema!

# include Warden::Test::Helpers
# Warden.test_mode!

Capybara.default_wait_time = 5
Capybara.javascript_driver = :poltergeist
#Capybara::Screenshot.prune_strategy = { keep: 20 }

RSpec.configure do |config|
  config.use_transactional_fixtures = false

  config.before(:suite) { DatabaseCleaner.clean_with :truncation }
  config.before(:each) { DatabaseCleaner.strategy = :transaction }
  config.before(:each, js: true) { DatabaseCleaner.strategy = :truncation }
  config.before(:each) { DatabaseCleaner.start }
  config.after(:each) { DatabaseCleaner.clean }

  config.include FactoryGirl::Syntax::Methods
  # config.include Devise::TestHelpers, type: :controller

  # config.before(:each, type: :controller) do
  #   @current_user = FactoryGirl.create(:user)
  #   login_as @current_user
  # end

  config.infer_spec_type_from_file_location!
  config.raise_errors_for_deprecations!
end

