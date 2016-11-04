require 'test_helper'

class CustomTagControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get custom_tag_index_url
    assert_response :success
  end

  test "should get show" do
    get custom_tag_show_url
    assert_response :success
  end

  test "should get new" do
    get custom_tag_new_url
    assert_response :success
  end

  test "should get create" do
    get custom_tag_create_url
    assert_response :success
  end

end
