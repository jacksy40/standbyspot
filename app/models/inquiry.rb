class Inquiry < ActiveRecord::Base

  belongs_to :listing
  belongs_to :user
  has_many :conversations

  validates :message, presence: true
  validates :user_id, presence: true
  validates :listing_id, presence: true

end


