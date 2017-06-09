require 'test_helper'

class DispatchersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get dispatchers_index_url
    assert_response :success
  end

  test "should get show" do
    get dispatchers_show_url
    assert_response :success
  end

  test "should get create" do
    get dispatchers_create_url
    assert_response :success
  end

  test "should get update" do
    get dispatchers_update_url
    assert_response :success
  end

  test "should get destroy" do
    get dispatchers_destroy_url
    assert_response :success
  end

end
