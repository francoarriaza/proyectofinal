require 'test_helper'

class AprendesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @aprende = aprendes(:one)
  end

  test "should get index" do
    get aprendes_url
    assert_response :success
  end

  test "should get new" do
    get new_aprende_url
    assert_response :success
  end

  test "should create aprende" do
    assert_difference('Aprende.count') do
      post aprendes_url, params: { aprende: {  } }
    end

    assert_redirected_to aprende_url(Aprende.last)
  end

  test "should show aprende" do
    get aprende_url(@aprende)
    assert_response :success
  end

  test "should get edit" do
    get edit_aprende_url(@aprende)
    assert_response :success
  end

  test "should update aprende" do
    patch aprende_url(@aprende), params: { aprende: {  } }
    assert_redirected_to aprende_url(@aprende)
  end

  test "should destroy aprende" do
    assert_difference('Aprende.count', -1) do
      delete aprende_url(@aprende)
    end

    assert_redirected_to aprendes_url
  end
end
