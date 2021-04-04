require "test_helper"

class SeasonsBbControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get seasons_bb_show_url
    assert_response :success
  end
end
