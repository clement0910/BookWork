class SendDailyEmail
  def perform
    include Sidekiq::Worker

    @user = params[:user]
    @unsubscribe_url = unsubscribe_url(@user.to_sgid(for: :unsubscribe))

  end
end
