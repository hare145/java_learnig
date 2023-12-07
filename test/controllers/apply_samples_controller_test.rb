require "test_helper"

class ApplySamplesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get apply_samples_index_url
    assert_response :success
  end
end
