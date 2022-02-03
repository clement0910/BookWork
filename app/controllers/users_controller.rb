class UsersController < ApplicationController
  # skip_before_action :verify_authenticity_token
  def create
    @user = User.new(user_params)
    if @user.save
      UserMailer.with(user: @user).welcome_email.deliver_later
      respond_to do |format|
        format.js
      end
    else
      ap @user.errors
      respond_to do |format|
        format.js
      end
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :accept_cgv, :campus)
  end
end
