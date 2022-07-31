class User < ApplicationRecord
  has_secure_password
  has_many :todolists

  validates :username, presence: true
  validates :username, uniqueness: {message: "already exist"}
end
