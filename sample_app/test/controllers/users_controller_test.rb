require 'test_helper'

class UsersControllerTest < ActionController::TestCase

  extended_title = "| Ruby on Rails Tutorial Sample App"

  test "should get new" do
    get :new
    assert_response :success
    assert_select "title", "Sign up #{extended_title}"
  end

end
