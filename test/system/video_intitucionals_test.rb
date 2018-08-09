require "application_system_test_case"

class VideoIntitucionalsTest < ApplicationSystemTestCase
  setup do
    @video_intitucional = video_intitucionals(:one)
  end

  test "visiting the index" do
    visit video_intitucionals_url
    assert_selector "h1", text: "Video Intitucionals"
  end

  test "creating a Video intitucional" do
    visit video_intitucionals_url
    click_on "New Video Intitucional"

    fill_in "Activo", with: @video_intitucional.activo
    fill_in "Descripcion", with: @video_intitucional.descripcion
    fill_in "Link", with: @video_intitucional.link
    fill_in "Nombre", with: @video_intitucional.nombre
    click_on "Create Video intitucional"

    assert_text "Video intitucional was successfully created"
    click_on "Back"
  end

  test "updating a Video intitucional" do
    visit video_intitucionals_url
    click_on "Edit", match: :first

    fill_in "Activo", with: @video_intitucional.activo
    fill_in "Descripcion", with: @video_intitucional.descripcion
    fill_in "Link", with: @video_intitucional.link
    fill_in "Nombre", with: @video_intitucional.nombre
    click_on "Update Video intitucional"

    assert_text "Video intitucional was successfully updated"
    click_on "Back"
  end

  test "destroying a Video intitucional" do
    visit video_intitucionals_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Video intitucional was successfully destroyed"
  end
end
