require "test_helper"

class MoviesControllerTest < ActionDispatch::IntegrationTest
  test "should get _form" do
    get movies__form_url
    assert_response :success
  end
end
