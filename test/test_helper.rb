ENV['RAILS_ENV'] ||= 'test'
require_relative '../config/environment'
require 'rails/test_help'

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all
  include FactoryBot::Syntax::Methods

  def sign_in(role)
    post user_session_path, params: { user: attributes_for(role) }
  end

  def sign_in(role)
    user = create(role)
    visit new_session_url
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_on 'Sign in'
  end

  # Add more helper methods to be used by all tests here...
end
