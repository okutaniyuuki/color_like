require 'test_helper'

class MakerJanrusControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get maker_janrus_new_url
    assert_response :success
  end

  test "should get index" do
    get maker_janrus_index_url
    assert_response :success
  end

end
