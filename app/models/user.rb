class User < ApplicationRecord

  has_secure_password
  
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true, format: { with: /\A[^@\s]+@[^@\s]+\z/, message: "Email invalido"}
end
