require "test_helper"

class SeasonsBcsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get seasons_bcs_show_url
    assert_response :success
  end
end
