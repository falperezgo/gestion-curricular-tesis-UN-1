require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get users_url
    assert_response :success
  end

  test "should get new" do
    get new_user_url
    assert_response :success
  end

  test "should create user" do 
    assert_difference('User.count') do
      post users_url, params: { user: { email: @user.email, firstname: @user.firstname, identification: @user.identification, lastname: @user.lastname, phone: @user.phone } }
    end

    assert_redirected_to user_url(User.last)
  end
    
  test "invalid without email" do
      @user.email = nil
      refute @user.valid?, "saved without email"
      assert_not_nil @user.errors[:email], "no validation error for email present"
  end
    
   test "invalid without firstname" do
      @user.firstname = nil
      refute @user.valid?, "saved without firstname"
      assert_not_nil @user.errors[:firstname], "no validation error for firstname present"
  end
    
  test "invalid without identification" do
      @user.identification = nil
      refute @user.valid?, "saved without identification"
      assert_not_nil @user.errors[:identification], "no validation error for identification present"
  end
    
   test "invalid without lastname" do
      @user.lastname = nil
      refute @user.valid?, "saved without lastname"
      assert_not_nil @user.errors[:lastname], "no validation error for lastname present"
  end
    
  test "invalid without phone" do
      @user.phone = nil
      refute @user.valid?, "saved without phone"
      assert_not_nil @user.errors[:phone], "no validation error for phone present"
  end
    
  test "should show user" do
    get user_url(@user)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_url(@user)
    assert_response :success
  end

  test "should update user" do
    patch user_url(@user), params: { user: { email: @user.email, firstname: @user.firstname, identification: @user.identification, lastname: @user.lastname, phone: @user.phone } }
    assert_redirected_to user_url(@user)
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete user_url(@user)
    end

    assert_redirected_to users_url
  end

end
