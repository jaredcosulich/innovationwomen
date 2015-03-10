class UserMailer < ActionMailer::Base
  default from: "#{ActionMailer::Base.default_url_options[:host]}"

  def reset_password_email(user)
    @user = user
    @url = edit_password_reset_url(user.reset_password_token)
    @greeting = "Hi #{user.profile.name}"

    recipient = user.email
    subject = 'Reset your password for Innovation Women'

    mail(to: recipient, subject: subject)
  end
end
