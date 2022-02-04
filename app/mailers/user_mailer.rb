class UserMailer < ApplicationMailer
  def welcome_email
    @user = params[:user]
    @unsubscribe_url = unsubscribe_url(@user.to_sgid(for: :unsubscribe))

    mail(to: @user.email, subject: 'Inscription BookWork')
  end

  def daily_email
    @bookings = params[:bookings]
    @date = Date.now.to_s
    @user = params[:user]
    @unsubscribe_url = unsubscribe_url(@user.tosgid(for: :unsubscribe))

    mail(to: @user.email, subject: "[BookWork] Réservation du #{Date.now}")
  end
end
