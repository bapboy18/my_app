require 'test_helper'

class RowContentsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get row_contents_index_url
    assert_response :success
  end

end
