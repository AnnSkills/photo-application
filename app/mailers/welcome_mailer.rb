class WelcomeMailer < ApplicationMailer

  def send_greeting(user)
    @user = user

    mail to: @user.email, subject: "Thank you for signing up on site"
  end
end
