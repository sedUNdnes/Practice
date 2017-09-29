# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview
    
    def welcome_email_preview
      UserMailer.welcome_email(User.first)
    end
  
  
  def multiple_recipients_preview()
    UserMailer.multiple_recipients()
  end
  
  
  def different_layout_preview()
    UserMailer.different_layout(User.last)
  end
  
  

  def welcome_email_with_attachments_preview()
    UserMailer.welcome_email_with_attachments(User.last)
  end
end