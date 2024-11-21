class PagesController < ApplicationController
  before_action :authenticate_user!


  def home
  end

  def dashboard
    @user = current_user
    @bookings = Booking.includes(:celebrity).where(user_id: current_user.id)
    @celebrities = @user.celebrities
  end


end
