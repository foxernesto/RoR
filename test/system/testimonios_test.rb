require "application_system_test_case"

class TestimoniosTest < ApplicationSystemTestCase
  setup do
    @testimonio = testimonios(:one)
  end

  test "visiting the index" do
    visit testimonios_url
    assert_selector "h1", text: "Testimonios"
  end

  test "creating a Testimonio" do
    visit testimonios_url
    click_on "New Testimonio"

    fill_in "Activo", with: @testimonio.activo
    fill_in "Descripcion", with: @testimonio.descripcion
    fill_in "Link", with: @testimonio.link
    fill_in "Nombre", with: @testimonio.nombre
    click_on "Create Testimonio"

    assert_text "Testimonio was successfully created"
    click_on "Back"
  end

  test "updating a Testimonio" do
    visit testimonios_url
    click_on "Edit", match: :first

    fill_in "Activo", with: @testimonio.activo
    fill_in "Descripcion", with: @testimonio.descripcion
    fill_in "Link", with: @testimonio.link
    fill_in "Nombre", with: @testimonio.nombre
    click_on "Update Testimonio"

    assert_text "Testimonio was successfully updated"
    click_on "Back"
  end

  test "destroying a Testimonio" do
    visit testimonios_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Testimonio was successfully destroyed"
  end
end
