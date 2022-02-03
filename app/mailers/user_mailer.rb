class UserMailer < ApplicationMailer
  def welcome_email
    @user = params[:user]
    @unsubscribe_url = unsubscribe_url(@user.to_sgid(for: :unsubscribe))
    @url = 'http://localhost:3000'

    mail(to: @user.email, subject: 'Inscription BookWork')
  end
end
