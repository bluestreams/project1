require 'test_helper'

class OwnersControllerTest < ActionController::TestCase
  setup do
    @owner = owners(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:owners)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create owner" do
    assert_difference('Owner.count') do
      post :create, owner: { citizenship: @owner.citizenship, current_address: @owner.current_address, firstname: @owner.firstname, home_address: @owner.home_address, home_phone_no: @owner.home_phone_no, lastname: @owner.lastname, middlename: @owner.middlename, mobile_no: @owner.mobile_no, passport_no: @owner.passport_no }
    end

    assert_redirected_to owner_path(assigns(:owner))
  end

  test "should show owner" do
    get :show, id: @owner
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @owner
    assert_response :success
  end

  test "should update owner" do
    patch :update, id: @owner, owner: { citizenship: @owner.citizenship, current_address: @owner.current_address, firstname: @owner.firstname, home_address: @owner.home_address, home_phone_no: @owner.home_phone_no, lastname: @owner.lastname, middlename: @owner.middlename, mobile_no: @owner.mobile_no, passport_no: @owner.passport_no }
    assert_redirected_to owner_path(assigns(:owner))
  end

  test "should destroy owner" do
    assert_difference('Owner.count', -1) do
      delete :destroy, id: @owner
    end

    assert_redirected_to owners_path
  end
end
