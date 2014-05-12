require 'test_helper'

class ProfileTest < ActiveSupport::TestCase
  test "should return the profile image or a placehold" do
    assert_equal "http://placehold.it/300x200", profiles(:profile1).get_image, "get an image placehold"
    assert_equal "/uploads/profile/image/183235640/http%3A/hdwallimg.com/wp-content/uploads/2014/02/White-Dog-Running-Wallpaper-HD-1024x681.jpg", profiles(:profile2).image.url, "get an image"
  end
end
