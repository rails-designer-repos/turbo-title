class Message < ApplicationRecord
  broadcasts :messages, inserts_by: :prepend

  after_commit :set_title_counter

  def title = "Message #{id}"

  private

  def set_title_counter
    broadcast_action_to :messages, action: :set_title_counter, attributes: { count: Message.count }
  end
end
