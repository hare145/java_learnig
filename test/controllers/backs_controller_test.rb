require "test_helper"

class BacksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get backs_index_url
    assert_response :success
  end

  test "should get show" do
    get backs_show_url
    assert_response :success
  end
end
