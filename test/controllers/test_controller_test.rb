require 'test_helper'

class TestControllerTest < ActionDispatch::IntegrationTest
  test "should get func" do
    get test_func_url
    assert_response :success
  end

end
