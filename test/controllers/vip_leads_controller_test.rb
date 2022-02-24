require 'test_helper'

class VipLeadsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get vip_leads_index_url
    assert_response :success
  end

  test "should get new" do
    get vip_leads_new_url
    assert_response :success
  end

  test "should get create" do
    get vip_leads_create_url
    assert_response :success
  end

  test "should get destroy" do
    get vip_leads_destroy_url
    assert_response :success
  end

end
