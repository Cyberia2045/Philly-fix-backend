require 'test_helper'

class IssueDispatchersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get issue_dispatchers_index_url
    assert_response :success
  end

  test "should get show" do
    get issue_dispatchers_show_url
    assert_response :success
  end

  test "should get create" do
    get issue_dispatchers_create_url
    assert_response :success
  end

  test "should get update" do
    get issue_dispatchers_update_url
    assert_response :success
  end

  test "should get destroy" do
    get issue_dispatchers_destroy_url
    assert_response :success
  end

end
