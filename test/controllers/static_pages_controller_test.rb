require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get about" do
    get :about
    assert_response :success
  end

  test "should get contact" do
    get :contact
    assert_response :success
  end

  test "should get why_picnics" do
    get :why_picnics
    assert_response :success
  end

  test "should get what_to_bring" do
    get :what_to_bring
    assert_response :success
  end

end
