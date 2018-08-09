require 'test_helper'

class TestimoniosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @testimonio = testimonios(:one)
  end

  test "should get index" do
    get testimonios_url
    assert_response :success
  end

  test "should get new" do
    get new_testimonio_url
    assert_response :success
  end

  test "should create testimonio" do
    assert_difference('Testimonio.count') do
      post testimonios_url, params: { testimonio: { activo: @testimonio.activo, descripcion: @testimonio.descripcion, link: @testimonio.link, nombre: @testimonio.nombre } }
    end

    assert_redirected_to testimonio_url(Testimonio.last)
  end

  test "should show testimonio" do
    get testimonio_url(@testimonio)
    assert_response :success
  end

  test "should get edit" do
    get edit_testimonio_url(@testimonio)
    assert_response :success
  end

  test "should update testimonio" do
    patch testimonio_url(@testimonio), params: { testimonio: { activo: @testimonio.activo, descripcion: @testimonio.descripcion, link: @testimonio.link, nombre: @testimonio.nombre } }
    assert_redirected_to testimonio_url(@testimonio)
  end

  test "should destroy testimonio" do
    assert_difference('Testimonio.count', -1) do
      delete testimonio_url(@testimonio)
    end

    assert_redirected_to testimonios_url
  end
end
