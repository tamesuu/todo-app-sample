require 'test_helper'

module Label
  class ItemsControllerTest < ActionDispatch::IntegrationTest
    include Engine.routes.url_helpers

    setup do
      @item = label_items(:one)
    end

    test "should get index" do
      get items_url
      assert_response :success
    end

    test "should get new" do
      get new_item_url
      assert_response :success
    end

    test "should create item" do
      assert_difference('Item.count') do
        post items_url, params: { item: { name: @item.name, user_id: @item.user_id } }
      end

      assert_redirected_to item_url(Item.last)
    end

    test "should show item" do
      get item_url(@item)
      assert_response :success
    end

    test "should get edit" do
      get edit_item_url(@item)
      assert_response :success
    end

    test "should update item" do
      patch item_url(@item), params: { item: { name: @item.name, user_id: @item.user_id } }
      assert_redirected_to item_url(@item)
    end

    test "should destroy item" do
      assert_difference('Item.count', -1) do
        delete item_url(@item)
      end

      assert_redirected_to items_url
    end
  end
end
