require 'test_helper'

class PermitownersControllerTest < ActionController::TestCase
  setup do
    @permitowner = permitowners(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:permitowners)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create permitowner" do
    assert_difference('Permitowner.count') do
      post :create, permitowner: { citizenship: @permitowner.citizenship, current_address: @permitowner.current_address, firstname: @permitowner.firstname, home_address: @permitowner.home_address, home_phone_no: @permitowner.home_phone_no, lastname: @permitowner.lastname, middlename: @permitowner.middlename, mobile_no: @permitowner.mobile_no, passport_no: @permitowner.passport_no, permit_id: @permitowner.permit_id }
    end

    assert_redirected_to permitowner_path(assigns(:permitowner))
  end

  test "should show permitowner" do
    get :show, id: @permitowner
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @permitowner
    assert_response :success
  end

  test "should update permitowner" do
    patch :update, id: @permitowner, permitowner: { citizenship: @permitowner.citizenship, current_address: @permitowner.current_address, firstname: @permitowner.firstname, home_address: @permitowner.home_address, home_phone_no: @permitowner.home_phone_no, lastname: @permitowner.lastname, middlename: @permitowner.middlename, mobile_no: @permitowner.mobile_no, passport_no: @permitowner.passport_no, permit_id: @permitowner.permit_id }
    assert_redirected_to permitowner_path(assigns(:permitowner))
  end

  test "should destroy permitowner" do
    assert_difference('Permitowner.count', -1) do
      delete :destroy, id: @permitowner
    end

    assert_redirected_to permitowners_path
  end
end
