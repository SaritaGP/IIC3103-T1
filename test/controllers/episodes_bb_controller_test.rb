require "test_helper"

class EpisodesBbControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get episodes_bb_show_url
    assert_response :success
  end
end
