class Listing < ActiveRecord::Base

  belongs_to :user
  has_many :inquiries

  validates :user_id, presence: true
  validates :address, presence: true
  validates :room_type, presence: true
  validates :bathroom, presence: true
  validates :price, presence: true

end
