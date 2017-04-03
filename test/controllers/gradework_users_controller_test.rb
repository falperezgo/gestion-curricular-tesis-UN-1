require 'test_helper'

class GradeworkUsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gradework_user = gradework_users(:one)
  end

  test "should get index" do
    get gradework_users_url
    assert_response :success
  end

  test "should get new" do
    get new_gradework_user_url
    assert_response :success
  end

  test "should create gradework_user" do
    assert_difference('GradeworkUser.count') do
      post gradework_users_url, params: { gradework_user: { gradework: @gradework_user.gradework, user: @gradework_user.user } }
    end

    assert_redirected_to gradework_user_url(GradeworkUser.last)
  end

  test "should show gradework_user" do
    get gradework_user_url(@gradework_user)
    assert_response :success
  end

  test "should get edit" do
    get edit_gradework_user_url(@gradework_user)
    assert_response :success
  end

  test "should update gradework_user" do
    patch gradework_user_url(@gradework_user), params: { gradework_user: { gradework: @gradework_user.gradework, user: @gradework_user.user } }
    assert_redirected_to gradework_user_url(@gradework_user)
  end

  test "should destroy gradework_user" do
    assert_difference('GradeworkUser.count', -1) do
      delete gradework_user_url(@gradework_user)
    end

    assert_redirected_to gradework_users_url
  end
end
