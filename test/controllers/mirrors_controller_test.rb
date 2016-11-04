require 'test_helper'

class MirrorsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get mirrors_index_url
    assert_response :success
  end

  test "should get new" do
    get mirrors_new_url
    assert_response :success
  end

  test "should get create" do
    get mirrors_create_url
    assert_response :success
  end

  test "should get show" do
    get mirrors_show_url
    assert_response :success
  end

end
