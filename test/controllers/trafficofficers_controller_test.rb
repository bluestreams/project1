require 'test_helper'

class TrafficofficersControllerTest < ActionController::TestCase
  setup do
    @trafficofficer = trafficofficers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:trafficofficers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create trafficofficer" do
    assert_difference('Trafficofficer.count') do
      post :create, trafficofficer: { firstname: @trafficofficer.firstname, hashed_password: @trafficofficer.hashed_password, lastname: @trafficofficer.lastname, middlename: @trafficofficer.middlename, national_id_no: @trafficofficer.national_id_no, role_id: @trafficofficer.role_id, salt: @trafficofficer.salt, username: @trafficofficer.username }
    end

    assert_redirected_to trafficofficer_path(assigns(:trafficofficer))
  end

  test "should show trafficofficer" do
    get :show, id: @trafficofficer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @trafficofficer
    assert_response :success
  end

  test "should update trafficofficer" do
    patch :update, id: @trafficofficer, trafficofficer: { firstname: @trafficofficer.firstname, hashed_password: @trafficofficer.hashed_password, lastname: @trafficofficer.lastname, middlename: @trafficofficer.middlename, national_id_no: @trafficofficer.national_id_no, role_id: @trafficofficer.role_id, salt: @trafficofficer.salt, username: @trafficofficer.username }
    assert_redirected_to trafficofficer_path(assigns(:trafficofficer))
  end

  test "should destroy trafficofficer" do
    assert_difference('Trafficofficer.count', -1) do
      delete :destroy, id: @trafficofficer
    end

    assert_redirected_to trafficofficers_path
  end
end
