include Devise::TestHelpers

class DashboardControllerTest < ActionController::TestCase
  test "should get index" do
    sign_in User.first
    get :index
    assert_response :success
    assert_not_nil assigns(:users)
  end
end