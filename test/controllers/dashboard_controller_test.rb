include Devise::TestHelpers

class DashboardControllerTest < ActionController::TestCase
  test "should get index" do
    sign_in User.first
    get :index
    assert_response :success
    assert_not_nil assigns(:users)
  end

  test "index should render correct template and layout" do
    sign_in User.first
    get :index
    assert_template :index
    assert_template layout: "layouts/application"
  end
end