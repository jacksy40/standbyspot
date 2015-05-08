class User < ActiveRecord::Base

  belongs_to :company
  has_many :listings
  has_many :inquiries
  has_many :conversations

  validates :authorized_company, presence: true

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable, :lockable

  def authorized_company
  @companies = Company.all
  array = email.split('@')
  array = array.pop
  company = array.gsub('.com', '')
    @companies.each do |c|
      if c.company.downcase == company.downcase
        return true
      end
    end
     errors.add(:email, "- please ask your company to subscribe")
  end

  def master?
    master
  end

end
