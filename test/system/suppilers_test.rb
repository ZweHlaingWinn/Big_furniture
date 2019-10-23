require "application_system_test_case"

class SuppilersTest < ApplicationSystemTestCase
  setup do
    @suppiler = suppilers(:one)
  end

  test "visiting the index" do
    visit suppilers_url
    assert_selector "h1", text: "Suppilers"
  end

  test "creating a Suppiler" do
    visit suppilers_url
    click_on "New Suppiler"

    fill_in "Address", with: @suppiler.address
    fill_in "Email", with: @suppiler.email
    fill_in "Phone", with: @suppiler.phone
    fill_in "Suppiler name", with: @suppiler.suppiler_name
    click_on "Create Suppiler"

    assert_text "Suppiler was successfully created"
    click_on "Back"
  end

  test "updating a Suppiler" do
    visit suppilers_url
    click_on "Edit", match: :first

    fill_in "Address", with: @suppiler.address
    fill_in "Email", with: @suppiler.email
    fill_in "Phone", with: @suppiler.phone
    fill_in "Suppiler name", with: @suppiler.suppiler_name
    click_on "Update Suppiler"

    assert_text "Suppiler was successfully updated"
    click_on "Back"
  end

  test "destroying a Suppiler" do
    visit suppilers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Suppiler was successfully destroyed"
  end
end
