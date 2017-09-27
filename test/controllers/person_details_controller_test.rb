require 'test_helper'

class PersonDetailsControllerTest < ActionDispatch::IntegrationTest
  test "should get personal" do
    get person_details_personal_url
    assert_response :success
  end

end
