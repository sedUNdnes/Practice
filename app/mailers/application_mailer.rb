class ApplicationMailer < ActionMailer::Base
  default from: 'from@example.com'
  layout nil
  #This line is commented for using the complete views from mailer
  #layout 'mailer'
end
