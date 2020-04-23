require "application_system_test_case"

class TrabajasTest < ApplicationSystemTestCase
  setup do
    @trabaja = trabajas(:one)
  end

  test "visiting the index" do
    visit trabajas_url
    assert_selector "h1", text: "Trabajas"
  end

  test "creating a Trabaja" do
    visit trabajas_url
    click_on "New Trabaja"

    click_on "Create Trabaja"

    assert_text "Trabaja was successfully created"
    click_on "Back"
  end

  test "updating a Trabaja" do
    visit trabajas_url
    click_on "Edit", match: :first

    click_on "Update Trabaja"

    assert_text "Trabaja was successfully updated"
    click_on "Back"
  end

  test "destroying a Trabaja" do
    visit trabajas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Trabaja was successfully destroyed"
  end
end
