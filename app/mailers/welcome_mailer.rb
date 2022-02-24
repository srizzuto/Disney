class WelcomeMailer < ApplicationMailer

  def welcome_mail(user)
    @user = user
    mail(to: user.email, subject: "Bienvenido a Disney", from: 'info@mysite.com')
  end
end
