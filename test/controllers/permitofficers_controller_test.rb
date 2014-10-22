require 'test_helper'

class PermitofficersControllerTest < ActionController::TestCase
  setup do
    @permitofficer = permitofficers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:permitofficers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create permitofficer" do
    assert_difference('Permitofficer.count') do
      post :create, permitofficer: { firstname: @permitofficer.firstname, hashed_password: @permitofficer.hashed_password, lastname: @permitofficer.lastname, middlename: @permitofficer.middlename, national_id_no: @permitofficer.national_id_no, role_id: @permitofficer.role_id, salt: @permitofficer.salt, username: @permitofficer.username }
    end

    assert_redirected_to permitofficer_path(assigns(:permitofficer))
  end

  test "should show permitofficer" do
    get :show, id: @permitofficer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @permitofficer
    assert_response :success
  end

  test "should update permitofficer" do
    patch :update, id: @permitofficer, permitofficer: { firstname: @permitofficer.firstname, hashed_password: @permitofficer.hashed_password, lastname: @permitofficer.lastname, middlename: @permitofficer.middlename, national_id_no: @permitofficer.national_id_no, role_id: @permitofficer.role_id, salt: @permitofficer.salt, username: @permitofficer.username }
    assert_redirected_to permitofficer_path(assigns(:permitofficer))
  end

  test "should destroy permitofficer" do
    assert_difference('Permitofficer.count', -1) do
      delete :destroy, id: @permitofficer
    end

    assert_redirected_to permitofficers_path
  end
end
