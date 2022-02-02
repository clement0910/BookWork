class UsersController < ApplicationController
  def create
    @user = User.new(user_params)
    if @user.save
      UserMailer.with(user: @user).welcome_email.deliver_later
    end
  end

  private

  def user_params
    params.require(:user).permit(:email)
  end
end
