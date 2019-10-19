require 'test_helper'

class OwnDesignProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @own_design_product = own_design_products(:one)
  end

  test "should get index" do
    get own_design_products_url
    assert_response :success
  end

  test "should get new" do
    get new_own_design_product_url
    assert_response :success
  end

  test "should create own_design_product" do
    assert_difference('OwnDesignProduct.count') do
      post own_design_products_url, params: { own_design_product: { color: @own_design_product.color, description: @own_design_product.description, name: @own_design_product.name, price: @own_design_product.price, size: @own_design_product.size, targetdate: @own_design_product.targetdate, user_id: @own_design_product.user_id } }
    end

    assert_redirected_to own_design_product_url(OwnDesignProduct.last)
  end

  test "should show own_design_product" do
    get own_design_product_url(@own_design_product)
    assert_response :success
  end

  test "should get edit" do
    get edit_own_design_product_url(@own_design_product)
    assert_response :success
  end

  test "should update own_design_product" do
    patch own_design_product_url(@own_design_product), params: { own_design_product: { color: @own_design_product.color, description: @own_design_product.description, name: @own_design_product.name, price: @own_design_product.price, size: @own_design_product.size, targetdate: @own_design_product.targetdate, user_id: @own_design_product.user_id } }
    assert_redirected_to own_design_product_url(@own_design_product)
  end

  test "should destroy own_design_product" do
    assert_difference('OwnDesignProduct.count', -1) do
      delete own_design_product_url(@own_design_product)
    end

    assert_redirected_to own_design_products_url
  end
end
