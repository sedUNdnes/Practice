class ApplicationMailer < ActionMailer::Base
  default from: 'ataraxiasedundnes@gmail.com'
  layout nil
  #This line is commented for using the complete views from mailer
  #layout 'mailer'
end
