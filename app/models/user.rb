class User < ApplicationRecord
  has_secure_password
  has_many :orders

  validates :name, :email, presence: true
  validates :password, length: { in: 8..20 }
end
