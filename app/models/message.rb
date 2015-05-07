class Message < ActiveRecord::Base

  belongs to :listing

  validates :message, presence: true
  validates :sender, presence: true
  validates :listing_id, presence: true

end
