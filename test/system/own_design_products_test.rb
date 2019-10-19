require "application_system_test_case"

class OwnDesignProductsTest < ApplicationSystemTestCase
  setup do
    @own_design_product = own_design_products(:one)
  end

  test "visiting the index" do
    visit own_design_products_url
    assert_selector "h1", text: "Own Design Products"
  end

  test "creating a Own design product" do
    visit own_design_products_url
    click_on "New Own Design Product"

    fill_in "Color", with: @own_design_product.color
    fill_in "Description", with: @own_design_product.description
    fill_in "Name", with: @own_design_product.name
    fill_in "Price", with: @own_design_product.price
    fill_in "Size", with: @own_design_product.size
    fill_in "Targetdate", with: @own_design_product.targetdate
    fill_in "User", with: @own_design_product.user_id
    click_on "Create Own design product"

    assert_text "Own design product was successfully created"
    click_on "Back"
  end

  test "updating a Own design product" do
    visit own_design_products_url
    click_on "Edit", match: :first

    fill_in "Color", with: @own_design_product.color
    fill_in "Description", with: @own_design_product.description
    fill_in "Name", with: @own_design_product.name
    fill_in "Price", with: @own_design_product.price
    fill_in "Size", with: @own_design_product.size
    fill_in "Targetdate", with: @own_design_product.targetdate
    fill_in "User", with: @own_design_product.user_id
    click_on "Update Own design product"

    assert_text "Own design product was successfully updated"
    click_on "Back"
  end

  test "destroying a Own design product" do
    visit own_design_products_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Own design product was successfully destroyed"
  end
end
