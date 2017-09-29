class UserMailer < ApplicationMailer
  
  #layout 'layout_example'
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
  def generating_url(user)
    @user = user
    @url  = 'https://ataraxia-sedundnes.herokuapp.com/'
    mail(to: @user.email, subject: 'Check this URL')
  end
  
  #This can be setted with your own mail, passed in the needed controller
  def user_dynamic(user, company)
    @car = car
    delivery_options = { user_name: company.smtp_user,
                         password: company.smtp_password,
                         address: company.smtp_host,
                         delivery_method: smtp
                         }
    mail(to: @car.email,
         subject: "Look how we're changing the delivery options",
         delivery_method_options: delivery_options)
  end
  
end
