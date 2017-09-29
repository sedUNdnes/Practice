class UserMailer < ApplicationMailer
  
  layout 'layout_example'
  def different_layout(user)
    mail(to: user.email) do |format|
      format.html { render layout: 'layout_example' }
      format.text
    end
  end
  
  
  def multiple_recipients()
    puts "oiashfisahifsaohsfa"
    #puts user.pluck[:email]
    @url  = 'https://ataraxia-sedundnes.herokuapp.com/'
    mail(to: User.pluck(:email) , subject: 'We are closing.')
  end
  
  
  def welcome_email(user)
    @user = user
    @url  = 'https://ataraxia-sedundnes.herokuapp.com/'
    email_with_name = %("#{@user.name}" <#{@user.email}>)
    mail(to: email_with_name = %("#{@user.name}" <#{@user.email}>), subject: 'Welcome with name')
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
