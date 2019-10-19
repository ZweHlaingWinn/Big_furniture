require 'test_helper'

class OwnOrdersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @own_order = own_orders(:one)
  end

  test "should get index" do
    get own_orders_url
    assert_response :success
  end

  test "should get new" do
    get new_own_order_url
    assert_response :success
  end

  test "should create own_order" do
    assert_difference('OwnOrder.count') do
      post own_orders_url, params: { own_order: { own_design_product_date: @own_order.own_design_product_date, own_design_product_id: @own_order.own_design_product_id, status: @own_order.status } }
    end

    assert_redirected_to own_order_url(OwnOrder.last)
  end

  test "should show own_order" do
    get own_order_url(@own_order)
    assert_response :success
  end

  test "should get edit" do
    get edit_own_order_url(@own_order)
    assert_response :success
  end

  test "should update own_order" do
    patch own_order_url(@own_order), params: { own_order: { own_design_product_date: @own_order.own_design_product_date, own_design_product_id: @own_order.own_design_product_id, status: @own_order.status } }
    assert_redirected_to own_order_url(@own_order)
  end

  test "should destroy own_order" do
    assert_difference('OwnOrder.count', -1) do
      delete own_order_url(@own_order)
    end

    assert_redirected_to own_orders_url
  end
end
