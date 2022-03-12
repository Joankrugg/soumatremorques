require 'test_helper'

class WhiteBookLeadsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get white_book_leads_index_url
    assert_response :success
  end

  test "should get new" do
    get white_book_leads_new_url
    assert_response :success
  end

  test "should get create" do
    get white_book_leads_create_url
    assert_response :success
  end

end
