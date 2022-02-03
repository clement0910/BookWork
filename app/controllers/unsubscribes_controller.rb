class UnsubscribesController < ApplicationController
  def show
    @user = GlobalID::Locator.locate_signed(params[:id], for: :unsubscribe)
    @user.update(subscribed: false)
  end
end
