require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get public_procurement" do
    get pages_public_procurement_url
    assert_response :success
  end

  test "should get public_relations" do
    get pages_public_relations_url
    assert_response :success
  end

end
