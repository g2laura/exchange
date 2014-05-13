include Devise::TestHelpers

class ProfileControllerTest < ActionController::TestCase
  def setup
    @controller = ProfilesController.new
  end

  test "should get show" do
    sign_in User.first
    profile = profiles(:profile1)
    get(:show, {'id' => profile.id})
    assert_response :success
    assert_not_nil assigns(:profile)
  end
end