require 'test_helper'

class SuppilersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @suppiler = suppilers(:one)
  end

  test "should get index" do
    get suppilers_url
    assert_response :success
  end

  test "should get new" do
    get new_suppiler_url
    assert_response :success
  end

  test "should create suppiler" do
    assert_difference('Suppiler.count') do
      post suppilers_url, params: { suppiler: { address: @suppiler.address, email: @suppiler.email, phone: @suppiler.phone, suppiler_name: @suppiler.suppiler_name } }
    end

    assert_redirected_to suppiler_url(Suppiler.last)
  end

  test "should show suppiler" do
    get suppiler_url(@suppiler)
    assert_response :success
  end

  test "should get edit" do
    get edit_suppiler_url(@suppiler)
    assert_response :success
  end

  test "should update suppiler" do
    patch suppiler_url(@suppiler), params: { suppiler: { address: @suppiler.address, email: @suppiler.email, phone: @suppiler.phone, suppiler_name: @suppiler.suppiler_name } }
    assert_redirected_to suppiler_url(@suppiler)
  end

  test "should destroy suppiler" do
    assert_difference('Suppiler.count', -1) do
      delete suppiler_url(@suppiler)
    end

    assert_redirected_to suppilers_url
  end
end
