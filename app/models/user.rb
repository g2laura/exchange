class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  after_create :create_profile
         
  has_many :sent,     class_name: "Message", foreign_key: "sent_id"
  has_many :received, class_name: "Message", foreign_key: "received_id"
  has_one  :profile
  
  def create_profile
    Profile.create(user: self)
  end

  def name
    return self.profile.name.blank? ? self.email : self.profile.name
  end

  def self.all_except(user)
    where.not(id: user)
  end
end
