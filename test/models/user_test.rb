require 'test_helper'

class UserTest < ActiveSupport::TestCase
  setup do
    @user = users(:one)
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
    
  test "identification is within range" do
      assert_includes 0..9999999999, @user.identification
  end
    
  test "phone is within range" do
      assert_includes 0..999999999, @user.phone
  end
    
end
