require "test_helper"

class MemberControllerTest < ActionDispatch::IntegrationTest
  test "should get top" do
    get member_top_url
    assert_response :success
  end
end
