class Message < ActiveRecord::Base
  belongs_to :sender,    class_name: "User", foreign_key: "sender_id"
  belongs_to :recipient, class_name: "User", foreign_key: "recipient_id"

  scope :sent_by,     ->(user) { where(:sender => user)}
  scope :received_by, ->(user) { where(:recipient => user)}

end
