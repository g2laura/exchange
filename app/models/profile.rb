class Profile < ActiveRecord::Base
  belongs_to :user
  mount_uploader :image, ImageUploader

  def get_image
    if image.blank?
      "http://placehold.it/300x200"
    else
      image
    end
  end
end
