require 'test_helper'

class SessionControllerTest < ActionController::TestCase
  test "should get login" do
    get :login
    assert_response :success
  end

  test "should get logout" do
    get :logout
    assert_response :success
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get admin" do
    get :admin
    assert_response :success
  end

  test "should get officer" do
    get :officer
    assert_response :success
  end

  test "should get vehicle_manager" do
    get :vehicle_manager
    assert_response :success
  end

end
