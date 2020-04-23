require 'test_helper'

class TrabajasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @trabaja = trabajas(:one)
  end

  test "should get index" do
    get trabajas_url
    assert_response :success
  end

  test "should get new" do
    get new_trabaja_url
    assert_response :success
  end

  test "should create trabaja" do
    assert_difference('Trabaja.count') do
      post trabajas_url, params: { trabaja: {  } }
    end

    assert_redirected_to trabaja_url(Trabaja.last)
  end

  test "should show trabaja" do
    get trabaja_url(@trabaja)
    assert_response :success
  end

  test "should get edit" do
    get edit_trabaja_url(@trabaja)
    assert_response :success
  end

  test "should update trabaja" do
    patch trabaja_url(@trabaja), params: { trabaja: {  } }
    assert_redirected_to trabaja_url(@trabaja)
  end

  test "should destroy trabaja" do
    assert_difference('Trabaja.count', -1) do
      delete trabaja_url(@trabaja)
    end

    assert_redirected_to trabajas_url
  end
end
