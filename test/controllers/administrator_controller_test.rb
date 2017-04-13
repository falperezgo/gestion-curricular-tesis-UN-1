require 'test_helper'

class AdministratorControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get administrator_home_url
    assert_response :success
  end

end
