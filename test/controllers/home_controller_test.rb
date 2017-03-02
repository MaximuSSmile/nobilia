require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get main" do
    get :main
    assert_response :success
  end

  test "should get delivery" do
    get :delivery
    assert_response :success
  end

  test "should get design" do
    get :design
    assert_response :success
  end

  test "should get contacts" do
    get :contacts
    assert_response :success
  end

end
