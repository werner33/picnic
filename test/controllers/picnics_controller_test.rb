require 'test_helper'

class PicnicsControllerTest < ActionController::TestCase
  setup do
    @picnic = picnics(:one)
    @user = users(:one)
    sign_in @user
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:picnics)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  # test "should create picnic" do
  #   assert_difference('Picnic.count') do
  #     post :create, picnic: { name: "picnic" }
  #   end

  #   assert_redirected_to picnic_path(assigns(:picnic))
  # end

  test "should show picnic" do
    get :show, id: @picnic
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @picnic
    assert_response :success
  end

  test "should update picnic" do
    patch :update, id: @picnic, picnic: {  }
    assert_redirected_to picnic_path(assigns(:picnic))
  end

  test "should destroy picnic" do
    assert_difference('Picnic.count', -1) do
      delete :destroy, id: @picnic
    end

    assert_redirected_to picnics_path
  end
end
