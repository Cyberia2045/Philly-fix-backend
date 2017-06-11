require 'test_helper'

class IssueUsersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get issue_users_index_url
    assert_response :success
  end

  test "should get show" do
    get issue_users_show_url
    assert_response :success
  end

  test "should get create" do
    get issue_users_create_url
    assert_response :success
  end

  test "should get update" do
    get issue_users_update_url
    assert_response :success
  end

  test "should get destroy" do
    get issue_users_destroy_url
    assert_response :success
  end

end
