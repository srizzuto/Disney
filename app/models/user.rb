class User < ApplicationRecord

  has_secure_password
  
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true, format: { with: /\A[^@\s]+@[^@\s]+\z/, message: "Email invalido"}

  after_create :welcome_mail

  def welcome_mail
    WelcomeMailer.welcome_mail(self).deliver
  end
end
