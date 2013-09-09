class User < ActiveRecord::Base
  before_save {self.email=email.downcase}
  has_many :items
  validates :first_name, presence:true
  validates :last_name, presence:true
  validates :password, presence:true, length: {minimum: 8 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, 
  uniqueness: { case_sensitive: false }
  
  
end
