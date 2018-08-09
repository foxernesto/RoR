require "application_system_test_case"

class UbicacionsTest < ApplicationSystemTestCase
  setup do
    @ubicacion = ubicacions(:one)
  end

  test "visiting the index" do
    visit ubicacions_url
    assert_selector "h1", text: "Ubicacions"
  end

  test "creating a Ubicacion" do
    visit ubicacions_url
    click_on "New Ubicacion"

    fill_in "Activo", with: @ubicacion.activo
    fill_in "Latitud", with: @ubicacion.latitud
    fill_in "Longitud", with: @ubicacion.longitud
    fill_in "Sitio", with: @ubicacion.sitio
    click_on "Create Ubicacion"

    assert_text "Ubicacion was successfully created"
    click_on "Back"
  end

  test "updating a Ubicacion" do
    visit ubicacions_url
    click_on "Edit", match: :first

    fill_in "Activo", with: @ubicacion.activo
    fill_in "Latitud", with: @ubicacion.latitud
    fill_in "Longitud", with: @ubicacion.longitud
    fill_in "Sitio", with: @ubicacion.sitio
    click_on "Update Ubicacion"

    assert_text "Ubicacion was successfully updated"
    click_on "Back"
  end

  test "destroying a Ubicacion" do
    visit ubicacions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ubicacion was successfully destroyed"
  end
end
