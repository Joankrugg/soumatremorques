require 'test_helper'

class CompatibilyLeadsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get compatibily_leads_index_url
    assert_response :success
  end

  test "should get new" do
    get compatibily_leads_new_url
    assert_response :success
  end

  test "should get create" do
    get compatibily_leads_create_url
    assert_response :success
  end

  test "should get destroy" do
    get compatibily_leads_destroy_url
    assert_response :success
  end

end
