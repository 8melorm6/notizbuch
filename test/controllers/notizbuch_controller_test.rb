require "test_helper"

class NotizbuchControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get notizbuch_index_url
    assert_response :success
  end
end
