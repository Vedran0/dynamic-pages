require 'test_helper'

class PageLinksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @page_link = page_links(:one)
  end

  test "should get index" do
    get page_links_url
    assert_response :success
  end

  test "should get new" do
    get new_page_link_url
    assert_response :success
  end

  test "should create page_link" do
    assert_difference('PageLink.count') do
      post page_links_url, params: { page_link: { name: @page_link.name, position: @page_link.position, scope: @page_link.scope } }
    end

    assert_redirected_to page_link_url(PageLink.last)
  end

  test "should show page_link" do
    get page_link_url(@page_link)
    assert_response :success
  end

  test "should get edit" do
    get edit_page_link_url(@page_link)
    assert_response :success
  end

  test "should update page_link" do
    patch page_link_url(@page_link), params: { page_link: { name: @page_link.name, position: @page_link.position, scope: @page_link.scope } }
    assert_redirected_to page_link_url(@page_link)
  end

  test "should destroy page_link" do
    assert_difference('PageLink.count', -1) do
      delete page_link_url(@page_link)
    end

    assert_redirected_to page_links_url
  end
end
