require 'test_helper'

class MessageControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get message_index_url
    assert_response :success
  end

  test "should get confirm" do
    get message_confirm_url
    assert_response :success
  end

  test "should get done" do
    get message_done_url
    assert_response :success
  end

end
