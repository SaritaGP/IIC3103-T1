require "test_helper"

class EpisodesBcsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get episodes_bcs_show_url
    assert_response :success
  end
end
