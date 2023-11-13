require "test_helper"

class SwipersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get swipers_index_url
    assert_response :success
  end
end
