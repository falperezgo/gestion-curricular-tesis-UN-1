require 'test_helper'

class GradeworksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gradework = gradeworks(:one)
  end

  test "should get index" do
    get gradeworks_url
    assert_response :success
  end

  test "should get new" do
    get new_gradework_url
    assert_response :success
  end

  test "should create gradework" do
    assert_difference('Gradework.count') do
      post gradeworks_url, params: { gradework: { begin_date: @gradework.begin_date, delivery_date: @gradework.delivery_date, description: @gradework.description, hour: @gradework.hour, locale: @gradework.locale, name: @gradework.name, semester: @gradework.semester, status: @gradework.status } }
    end

    assert_redirected_to gradework_url(Gradework.last)
  end

  test "should show gradework" do
    get gradework_url(@gradework)
    assert_response :success
  end

  test "should get edit" do
    get edit_gradework_url(@gradework)
    assert_response :success
  end

  test "should update gradework" do
    patch gradework_url(@gradework), params: { gradework: { begin_date: @gradework.begin_date, delivery_date: @gradework.delivery_date, description: @gradework.description, hour: @gradework.hour, locale: @gradework.locale, name: @gradework.name, semester: @gradework.semester, status: @gradework.status } }
    assert_redirected_to gradework_url(@gradework)
  end

  test "should destroy gradework" do
    assert_difference('Gradework.count', -1) do
      delete gradework_url(@gradework)
    end

    assert_redirected_to gradeworks_url
  end
end
