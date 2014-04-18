class UserMailer < ActionMailer::Base
  default form: 'from@example.com'

  def welkome_email(user)
    @user = user
    @url = 'http://example.com/login'
    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end
end