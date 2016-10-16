require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest

  test "layout links" do 
    get root_path
    assert_template 'static_pages/home'
    assert_select "a[href=?]", root_path, count: 2
    assert_select "a[href=?]", about_url
    assert_select "a[href=?]", help_url
    assert_select "a[href=?]", contact_us_path
  end

  test "contact page" do    
    get contact_us_path
    assert_select "title", full_title("Contact")
  end

end
