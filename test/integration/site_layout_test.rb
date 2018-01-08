require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest

  test "layout links" do
    get root_path
    assert_template 'images/upload'
    assert_select "h1", "Home"
    assert_select "a[href=?]", images_path
    get images_path
    assert_template 'images/index'
    assert_select "h2", "Images"
  end
end
