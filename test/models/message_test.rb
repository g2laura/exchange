require 'test_helper'

class MessageTest < ActiveSupport::TestCase
  test "should get the messages sent by an user" do
    sender = users(:user1)
    receiver = users(:user2)
    Message.create(content: "test", sender: sender, recipient: receiver)
    assert_equal "test", Message.sent_by(sender).first.content, "return the message sent for the user"
  end

  test "should get the messages received by an user" do
    sender = users(:user1)
    receiver = users(:user2)
    Message.create(content: "test", sender: sender, recipient: receiver)
    assert_equal "test", Message.received_by(receiver).first.content, "return the message received for the user"
  end
end
