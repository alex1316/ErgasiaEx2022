require 'rails_helper'

RSpec.describe Private::Conversation, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"

  scope :between_users, -> (user1_id, user2_id) do
    where(sender_id: user1_id, recipient_id: user2_id).or(
      where(sender_id: user2_id, recipient_id: user1_id)
    )
  end

end
