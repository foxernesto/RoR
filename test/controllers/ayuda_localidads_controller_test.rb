require 'test_helper'

class AyudaLocalidadsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ayuda_localidad = ayuda_localidads(:one)
  end

  test "should get index" do
    get ayuda_localidads_url
    assert_response :success
  end

  test "should get new" do
    get new_ayuda_localidad_url
    assert_response :success
  end

  test "should create ayuda_localidad" do
    assert_difference('AyudaLocalidad.count') do
      post ayuda_localidads_url, params: { ayuda_localidad: { mensaje: @ayuda_localidad.mensaje } }
    end

    assert_redirected_to ayuda_localidad_url(AyudaLocalidad.last)
  end

  test "should show ayuda_localidad" do
    get ayuda_localidad_url(@ayuda_localidad)
    assert_response :success
  end

  test "should get edit" do
    get edit_ayuda_localidad_url(@ayuda_localidad)
    assert_response :success
  end

  test "should update ayuda_localidad" do
    patch ayuda_localidad_url(@ayuda_localidad), params: { ayuda_localidad: { mensaje: @ayuda_localidad.mensaje } }
    assert_redirected_to ayuda_localidad_url(@ayuda_localidad)
  end

  test "should destroy ayuda_localidad" do
    assert_difference('AyudaLocalidad.count', -1) do
      delete ayuda_localidad_url(@ayuda_localidad)
    end

    assert_redirected_to ayuda_localidads_url
  end
end
