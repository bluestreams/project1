require 'test_helper'

class OffencecausesControllerTest < ActionController::TestCase
  setup do
    @offencecause = offencecauses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:offencecauses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create offencecause" do
    assert_difference('Offencecause.count') do
      post :create, offencecause: { closing_date: @offencecause.closing_date, offence_id: @offencecause.offence_id, openning_date: @offencecause.openning_date, permit_id: @offencecause.permit_id, permitofficer_id: @offencecause.permitofficer_id }
    end

    assert_redirected_to offencecause_path(assigns(:offencecause))
  end

  test "should show offencecause" do
    get :show, id: @offencecause
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @offencecause
    assert_response :success
  end

  test "should update offencecause" do
    patch :update, id: @offencecause, offencecause: { closing_date: @offencecause.closing_date, offence_id: @offencecause.offence_id, openning_date: @offencecause.openning_date, permit_id: @offencecause.permit_id, permitofficer_id: @offencecause.permitofficer_id }
    assert_redirected_to offencecause_path(assigns(:offencecause))
  end

  test "should destroy offencecause" do
    assert_difference('Offencecause.count', -1) do
      delete :destroy, id: @offencecause
    end

    assert_redirected_to offencecauses_path
  end
end
