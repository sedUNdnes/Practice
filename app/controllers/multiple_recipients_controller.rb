class MultipleRecipientsController < ApplicationController
  public
  def send_to_all
    @users = User.all
    UserMailer.multiple_recipients().deliver_later
    redirect_to  users_path
  end
end
