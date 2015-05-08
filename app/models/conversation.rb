class Conversation < ActiveRecord::Base

  belongs_to :inquiry
  belongs_to :user

  validates :message, presence: true
  validates :user_id, presence: true
  validates :inquiry_id, presence: true

end
