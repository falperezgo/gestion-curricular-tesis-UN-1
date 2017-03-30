require 'test_helper'

class JuriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @jury = juries(:one)
  end

  test "should get index" do
    get juries_url
    assert_response :success
  end

  test "should get new" do
    get new_jury_url
    assert_response :success
  end

  test "should create jury" do
    assert_difference('Jury.count') do
      post juries_url, params: { jury: { email: @jury.email, firstnamename: @jury.firstnamename, identification: @jury.identification, lastname: @jury.lastname, phone: @jury.phone } }
    end

    assert_redirected_to jury_url(Jury.last)
  end

  test "should show jury" do
    get jury_url(@jury)
    assert_response :success
  end

  test "should get edit" do
    get edit_jury_url(@jury)
    assert_response :success
  end

  test "should update jury" do
    patch jury_url(@jury), params: { jury: { email: @jury.email, firstnamename: @jury.firstnamename, identification: @jury.identification, lastname: @jury.lastname, phone: @jury.phone } }
    assert_redirected_to jury_url(@jury)
  end

  test "should destroy jury" do
    assert_difference('Jury.count', -1) do
      delete jury_url(@jury)
    end

    assert_redirected_to juries_url
  end
end
