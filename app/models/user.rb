class User < ApplicationRecord
  has_secure_password
  has_many :complaint
  validates :username, presence: true, uniqueness: true
end
