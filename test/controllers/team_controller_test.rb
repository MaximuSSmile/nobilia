require 'test_helper'

class TeamControllerTest < ActionController::TestCase
  test "should get teammates" do
    get :teammates
    assert_response :success
  end

end
