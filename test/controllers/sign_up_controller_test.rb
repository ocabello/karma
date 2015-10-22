require 'test_helper'

class SignUpControllerTest < ActionController::TestCase
  test "should get Signupform" do
    get :Signupform
    assert_response :success
  end

end
