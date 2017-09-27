class UserMailer < ApplicationMailer
  

  def welcome_email(user)
    @user = user
    @url  = 'https://ataraxia-sedundnes.herokuapp.com/'
    mail(to: @user.email, subject: 'Welcome')
  end
  def welcome_email_with_attachments(user)
    @user = user
    @url  = 'https://ataraxia-sedundnes.herokuapp.com/'
    @song = 'https://www.youtube.com/watch?v=-nFzr24qo1c'
    # Mark this mail as no-spam
    headers({'X-No-Spam' => 'True', 'In-Reply-To' => 'complaints@dontcare.com'})
    # Attaching a beautiful cover from Vampire Weekend
    attachments['vwws.jpg'] = File.read("#{Rails.root}/public/vwws.jpg")
    mail(to: @user.email, subject: 'Look that cover!')
  end
  
end
