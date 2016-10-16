require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

    base_title = "Ruby on Rails Tutorial Sample App"

  test "should get root page" do
    get root_path
    assert_template 'static_pages/home'
    assert_response :success
    assert_select "title", "#{base_title}"
  end

  test "should get help" do
    get help_url
    assert_response :success
    assert_select "title", "Help | #{base_title}"
  end

  test "should get about" do
    get about_path
    assert_response :success
    assert_select "title", "About | #{base_title}"
  end

  test "should get contact" do
    get contact_us_url
    assert_response :success
    assert_select "title", "Contact | #{base_title}"
    assert_select "title", full_title("Contact")
  end

end
