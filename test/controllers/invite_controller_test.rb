require 'test_helper'
require 'devise'

class InviteControllerTest < ActionController::TestCase
  
  
  def setup
    @request.env["devise.mapping"] = Devise.mappings[:user]
    sign_in FactoryGirl.create(:user)
    @controller = InvitesController 
  end
  
  test "should get create" do
    get :create, invite: {}
    assert_response :success
  end

end
