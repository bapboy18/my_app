require 'test_helper'

class RawFilesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get raw_files_index_url
    assert_response :success
  end

  test "should get show" do
    get raw_files_show_url
    assert_response :success
  end

  test "should get new" do
    get raw_files_new_url
    assert_response :success
  end

  test "should get create" do
    get raw_files_create_url
    assert_response :success
  end

end
