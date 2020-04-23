require "application_system_test_case"

class EstudiaTest < ApplicationSystemTestCase
  setup do
    @estudium = estudia(:one)
  end

  test "visiting the index" do
    visit estudia_url
    assert_selector "h1", text: "Estudia"
  end

  test "creating a Estudium" do
    visit estudia_url
    click_on "New Estudium"

    fill_in "Carreras", with: @estudium.carreras
    fill_in "Categoria", with: @estudium.categoria
    fill_in "Descripcion", with: @estudium.descripcion
    fill_in "Modo", with: @estudium.modo
    fill_in "Nivel", with: @estudium.nivel
    fill_in "Nombre", with: @estudium.nombre
    fill_in "Sede", with: @estudium.sede
    fill_in "Ubicacion", with: @estudium.ubicacion
    click_on "Create Estudium"

    assert_text "Estudium was successfully created"
    click_on "Back"
  end

  test "updating a Estudium" do
    visit estudia_url
    click_on "Edit", match: :first

    fill_in "Carreras", with: @estudium.carreras
    fill_in "Categoria", with: @estudium.categoria
    fill_in "Descripcion", with: @estudium.descripcion
    fill_in "Modo", with: @estudium.modo
    fill_in "Nivel", with: @estudium.nivel
    fill_in "Nombre", with: @estudium.nombre
    fill_in "Sede", with: @estudium.sede
    fill_in "Ubicacion", with: @estudium.ubicacion
    click_on "Update Estudium"

    assert_text "Estudium was successfully updated"
    click_on "Back"
  end

  test "destroying a Estudium" do
    visit estudia_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Estudium was successfully destroyed"
  end
end
