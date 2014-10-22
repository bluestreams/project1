require 'test_helper'

class OffencesControllerTest < ActionController::TestCase
  setup do
    @offence = offences(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:offences)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create offence" do
    assert_difference('Offence.count') do
      post :create, offence: { charge_fee: @offence.charge_fee, description: @offence.description, title: @offence.title }
    end

    assert_redirected_to offence_path(assigns(:offence))
  end

  test "should show offence" do
    get :show, id: @offence
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @offence
    assert_response :success
  end

  test "should update offence" do
    patch :update, id: @offence, offence: { charge_fee: @offence.charge_fee, description: @offence.description, title: @offence.title }
    assert_redirected_to offence_path(assigns(:offence))
  end

  test "should destroy offence" do
    assert_difference('Offence.count', -1) do
      delete :destroy, id: @offence
    end

    assert_redirected_to offences_path
  end
end
