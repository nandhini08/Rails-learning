require 'test_helper'

class DetailsControllerTest < ActionDispatch::IntegrationTest
  test "should get personal" do
    get details_personal_url
    assert_response :success
  end

end
