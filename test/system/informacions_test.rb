require "application_system_test_case"

class InformacionsTest < ApplicationSystemTestCase
  setup do
    @informacion = informacions(:one)
  end

  test "visiting the index" do
    visit informacions_url
    assert_selector "h1", text: "Informacions"
  end

  test "creating a Informacion" do
    visit informacions_url
    click_on "New Informacion"

    fill_in "Activo", with: @informacion.activo
    fill_in "Descripcion", with: @informacion.descripcion
    fill_in "Efectos", with: @informacion.efectos
    fill_in "Link", with: @informacion.link
    fill_in "Nombre Altenativo", with: @informacion.nombre_altenativo
    fill_in "Nombre Tecnico", with: @informacion.nombre_tecnico
    fill_in "Via Consumo", with: @informacion.via_consumo
    click_on "Create Informacion"

    assert_text "Informacion was successfully created"
    click_on "Back"
  end

  test "updating a Informacion" do
    visit informacions_url
    click_on "Edit", match: :first

    fill_in "Activo", with: @informacion.activo
    fill_in "Descripcion", with: @informacion.descripcion
    fill_in "Efectos", with: @informacion.efectos
    fill_in "Link", with: @informacion.link
    fill_in "Nombre Altenativo", with: @informacion.nombre_altenativo
    fill_in "Nombre Tecnico", with: @informacion.nombre_tecnico
    fill_in "Via Consumo", with: @informacion.via_consumo
    click_on "Update Informacion"

    assert_text "Informacion was successfully updated"
    click_on "Back"
  end

  test "destroying a Informacion" do
    visit informacions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Informacion was successfully destroyed"
  end
end
