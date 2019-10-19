require "application_system_test_case"

class OwnOrdersTest < ApplicationSystemTestCase
  setup do
    @own_order = own_orders(:one)
  end

  test "visiting the index" do
    visit own_orders_url
    assert_selector "h1", text: "Own Orders"
  end

  test "creating a Own order" do
    visit own_orders_url
    click_on "New Own Order"

    fill_in "Own design product date", with: @own_order.own_design_product_date
    fill_in "Own design product", with: @own_order.own_design_product_id
    fill_in "Status", with: @own_order.status
    click_on "Create Own order"

    assert_text "Own order was successfully created"
    click_on "Back"
  end

  test "updating a Own order" do
    visit own_orders_url
    click_on "Edit", match: :first

    fill_in "Own design product date", with: @own_order.own_design_product_date
    fill_in "Own design product", with: @own_order.own_design_product_id
    fill_in "Status", with: @own_order.status
    click_on "Update Own order"

    assert_text "Own order was successfully updated"
    click_on "Back"
  end

  test "destroying a Own order" do
    visit own_orders_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Own order was successfully destroyed"
  end
end
