class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def new
    @celebrity = Celebrity.find(params[:celebrity_id])
    @celebrities = Celebrity.all
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.list = @list
    if @booking.save
    redirect_to celebrity_path(@celebrity)
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:user_id, :celebrity_id, :activity, :total_price)
  end
end
