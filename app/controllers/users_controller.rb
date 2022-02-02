class UsersController < ApplicationController
  # skip_before_action :verify_authenticity_token
  def create
    @user = User.new(user_params)
    if @user.save
      UserMailer.with(user: @user).welcome_email.deliver_later
      redirect_to root_path
    end
  end

  private

  def user_params
    params.require(:user).permit(:email)
  end
end
