ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...
  def assert_basic_links
    assert_select "a[href=?]", root_path, count: 1
    assert_select "a[href=?]", resume_path
    assert_select "a[href=?]", projects_path
  end

end

class ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers
end
