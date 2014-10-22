require 'test_helper'

class VehiclemanagersControllerTest < ActionController::TestCase
  setup do
    @vehiclemanager = vehiclemanagers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vehiclemanagers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vehiclemanager" do
    assert_difference('Vehiclemanager.count') do
      post :create, vehiclemanager: { firstname: @vehiclemanager.firstname, hashed_password: @vehiclemanager.hashed_password, lastname: @vehiclemanager.lastname, middlename: @vehiclemanager.middlename, national_id_no: @vehiclemanager.national_id_no, role_id: @vehiclemanager.role_id, salt: @vehiclemanager.salt, username: @vehiclemanager.username }
    end

    assert_redirected_to vehiclemanager_path(assigns(:vehiclemanager))
  end

  test "should show vehiclemanager" do
    get :show, id: @vehiclemanager
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vehiclemanager
    assert_response :success
  end

  test "should update vehiclemanager" do
    patch :update, id: @vehiclemanager, vehiclemanager: { firstname: @vehiclemanager.firstname, hashed_password: @vehiclemanager.hashed_password, lastname: @vehiclemanager.lastname, middlename: @vehiclemanager.middlename, national_id_no: @vehiclemanager.national_id_no, role_id: @vehiclemanager.role_id, salt: @vehiclemanager.salt, username: @vehiclemanager.username }
    assert_redirected_to vehiclemanager_path(assigns(:vehiclemanager))
  end

  test "should destroy vehiclemanager" do
    assert_difference('Vehiclemanager.count', -1) do
      delete :destroy, id: @vehiclemanager
    end

    assert_redirected_to vehiclemanagers_path
  end
end
