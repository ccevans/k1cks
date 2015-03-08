require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get launch" do
    get :launch
    assert_response :success
  end

end
