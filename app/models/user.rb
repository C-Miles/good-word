class User < ApplicationRecord
  validates :username, presence: true, uniqueness: { case_sensitive: false }, length: { minimum: 3, maximum: 16 }
  has_many :messages
  has_secure_password
end
