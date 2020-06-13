require 'test_helper'

class ColorJanrusControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get color_janrus_new_url
    assert_response :success
  end

  test "should get index" do
    get color_janrus_index_url
    assert_response :success
  end

end
