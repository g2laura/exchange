require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "should not save user without email" do
    user = User.new
    assert_not user.save, "saved the user without email"
  end

  test "should create a profile on save" do
    user = User.create(email: "user@email.com", password: "12345678")
    assert_not user.profile.nil?, "created the profile for an user"
  end

  test "should get the user email" do
    user = User.create(email: "user@email.com", password: "12345678")
    assert_equal user.name, user.email, "If the user hasn't a name then shows the email"
  end

  test "should get the user name" do
    assert_equal users(:user1).name, profiles(:profile1).name, "If the user has a name then shows the name"
  end

  test "should get all users but one" do
    assert_equal User.all.count, 2, "only two users in the fixtures"
    assert_equal User.all_except(User.first).count, 1, "all users except the first"
  end
end
