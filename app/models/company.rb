class Company < ActiveRecord::Base

  has_many :users

  validates :company, uniqueness: true

end
