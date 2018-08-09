require 'test_helper'

class VideoIntitucionalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @video_intitucional = video_intitucionals(:one)
  end

  test "should get index" do
    get video_intitucionals_url
    assert_response :success
  end

  test "should get new" do
    get new_video_intitucional_url
    assert_response :success
  end

  test "should create video_intitucional" do
    assert_difference('VideoIntitucional.count') do
      post video_intitucionals_url, params: { video_intitucional: { activo: @video_intitucional.activo, descripcion: @video_intitucional.descripcion, link: @video_intitucional.link, nombre: @video_intitucional.nombre } }
    end

    assert_redirected_to video_intitucional_url(VideoIntitucional.last)
  end

  test "should show video_intitucional" do
    get video_intitucional_url(@video_intitucional)
    assert_response :success
  end

  test "should get edit" do
    get edit_video_intitucional_url(@video_intitucional)
    assert_response :success
  end

  test "should update video_intitucional" do
    patch video_intitucional_url(@video_intitucional), params: { video_intitucional: { activo: @video_intitucional.activo, descripcion: @video_intitucional.descripcion, link: @video_intitucional.link, nombre: @video_intitucional.nombre } }
    assert_redirected_to video_intitucional_url(@video_intitucional)
  end

  test "should destroy video_intitucional" do
    assert_difference('VideoIntitucional.count', -1) do
      delete video_intitucional_url(@video_intitucional)
    end

    assert_redirected_to video_intitucionals_url
  end
end
