class BookingController < ApplicationController
  def index
    @booking = Booking.all
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.list = @list
    if @booking.save
      redirect_to celebrity_path(@celebrity)
    end
  end
end
