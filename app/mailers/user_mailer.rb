class UserMailer < ActionMailer::Base
  default from: "notifications@mysite.com"

  def welcome_email user
    @user = user
    @url =  "http://mysite.com/auth/#{user.token}"
    mail(:to => user.email, :subject => "Welcome to mysite.com")
  end
end
