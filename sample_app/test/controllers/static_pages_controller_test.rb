require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase

  extended_title = "| Ruby on Rails Tutorial Sample App"

  test "should get home" do
    get :home # vs get_static_pages_home_url
    assert_response :success
    assert_select "title", "Home #{extended_title}"
  end

  test "should get help" do
    get :help # vs get_static_pages_help_url
    assert_response :success
    assert_select "title", "Help #{extended_title}"
  end

  test "should get about" do
    get :about # vs get_static_pages_about_url
    assert_response :success
    assert_select "title", "About #{extended_title}"
  end

  test "should get contact" do
    get :contact # vs get_static_pages_contact_url
    assert_response :success
    assert_select "title", "Contact #{extended_title}"
  end
end
