class UserMailer < ApplicationMailer
  

  def welcome_email(user)
    @user = user
    @url  = 'https://ataraxia-sedundnes.herokuapp.com/'
    mail(to: @user.email, subject: 'Welcome')
  end
  
  
end
