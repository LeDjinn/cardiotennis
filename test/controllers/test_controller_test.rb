require "test_helper"

class TestControllerTest < ActionDispatch::IntegrationTest
  test "should get prog" do
    get test_prog_url
    assert_response :success
  end
end
