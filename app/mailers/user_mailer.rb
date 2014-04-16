class UserMailer < ActionMailer::Base
  default from: "ashley@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.signup_confirmation.subject
  #
  def deliver_welcome_message(user)
    @greeting = "Eeeeey? "
    @user = user
    mail to: @user.email, subject: "Velcome to LairBnB"
  end
end
