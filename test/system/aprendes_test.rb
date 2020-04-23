require "application_system_test_case"

class AprendesTest < ApplicationSystemTestCase
  setup do
    @aprende = aprendes(:one)
  end

  test "visiting the index" do
    visit aprendes_url
    assert_selector "h1", text: "Aprendes"
  end

  test "creating a Aprende" do
    visit aprendes_url
    click_on "New Aprende"

    click_on "Create Aprende"

    assert_text "Aprende was successfully created"
    click_on "Back"
  end

  test "updating a Aprende" do
    visit aprendes_url
    click_on "Edit", match: :first

    click_on "Update Aprende"

    assert_text "Aprende was successfully updated"
    click_on "Back"
  end

  test "destroying a Aprende" do
    visit aprendes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Aprende was successfully destroyed"
  end
end
