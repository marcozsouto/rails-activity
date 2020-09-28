class User < ApplicationRecord
  has_secure_password
  has_many :complaint
  validates :username, presence: true, uniqueness: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP } 
end
