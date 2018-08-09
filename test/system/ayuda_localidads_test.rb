require "application_system_test_case"

class AyudaLocalidadsTest < ApplicationSystemTestCase
  setup do
    @ayuda_localidad = ayuda_localidads(:one)
  end

  test "visiting the index" do
    visit ayuda_localidads_url
    assert_selector "h1", text: "Ayuda Localidads"
  end

  test "creating a Ayuda localidad" do
    visit ayuda_localidads_url
    click_on "New Ayuda Localidad"

    fill_in "Mensaje", with: @ayuda_localidad.mensaje
    click_on "Create Ayuda localidad"

    assert_text "Ayuda localidad was successfully created"
    click_on "Back"
  end

  test "updating a Ayuda localidad" do
    visit ayuda_localidads_url
    click_on "Edit", match: :first

    fill_in "Mensaje", with: @ayuda_localidad.mensaje
    click_on "Update Ayuda localidad"

    assert_text "Ayuda localidad was successfully updated"
    click_on "Back"
  end

  test "destroying a Ayuda localidad" do
    visit ayuda_localidads_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ayuda localidad was successfully destroyed"
  end
end
