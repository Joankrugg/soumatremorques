require 'test_helper'

class CriteriaLeadsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get criteria_leads_index_url
    assert_response :success
  end

  test "should get new" do
    get criteria_leads_new_url
    assert_response :success
  end

  test "should get create" do
    get criteria_leads_create_url
    assert_response :success
  end

  test "should get destroy" do
    get criteria_leads_destroy_url
    assert_response :success
  end

end
