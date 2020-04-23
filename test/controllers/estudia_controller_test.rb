require 'test_helper'

class EstudiaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @estudium = estudia(:one)
  end

  test "should get index" do
    get estudia_url
    assert_response :success
  end

  test "should get new" do
    get new_estudium_url
    assert_response :success
  end

  test "should create estudium" do
    assert_difference('Estudium.count') do
      post estudia_url, params: { estudium: { carreras: @estudium.carreras, categoria: @estudium.categoria, descripcion: @estudium.descripcion, modo: @estudium.modo, nivel: @estudium.nivel, nombre: @estudium.nombre, sede: @estudium.sede, ubicacion: @estudium.ubicacion } }
    end

    assert_redirected_to estudium_url(Estudium.last)
  end

  test "should show estudium" do
    get estudium_url(@estudium)
    assert_response :success
  end

  test "should get edit" do
    get edit_estudium_url(@estudium)
    assert_response :success
  end

  test "should update estudium" do
    patch estudium_url(@estudium), params: { estudium: { carreras: @estudium.carreras, categoria: @estudium.categoria, descripcion: @estudium.descripcion, modo: @estudium.modo, nivel: @estudium.nivel, nombre: @estudium.nombre, sede: @estudium.sede, ubicacion: @estudium.ubicacion } }
    assert_redirected_to estudium_url(@estudium)
  end

  test "should destroy estudium" do
    assert_difference('Estudium.count', -1) do
      delete estudium_url(@estudium)
    end

    assert_redirected_to estudia_url
  end
end
