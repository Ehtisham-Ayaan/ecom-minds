require "application_system_test_case"

class SavermartsTest < ApplicationSystemTestCase
  setup do
    @savermart = savermarts(:one)
  end

  test "visiting the index" do
    visit savermarts_url
    assert_selector "h1", text: "Savermarts"
  end

  test "creating a Savermart" do
    visit savermarts_url
    click_on "New Savermart"

    click_on "Create Savermart"

    assert_text "Savermart was successfully created"
    click_on "Back"
  end

  test "updating a Savermart" do
    visit savermarts_url
    click_on "Edit", match: :first

    click_on "Update Savermart"

    assert_text "Savermart was successfully updated"
    click_on "Back"
  end

  test "destroying a Savermart" do
    visit savermarts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Savermart was successfully destroyed"
  end
end
