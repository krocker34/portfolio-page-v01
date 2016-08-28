require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  test "should get home" do
    get root_url
    assert_response :success
  end

  test "should get resume" do
    get resume_path
    assert_response :success
  end

end
