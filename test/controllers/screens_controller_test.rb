require "test_helper"

class ScreensControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get screens_index_url
    assert_response :success
  end
end
