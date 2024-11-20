class BookingsController < ApplicationController
  before_action :authenticate_user!

  def index
    @bookings = Booking.all
  end

  def new
    @celebrity = Celebrity.find(params[:celebrity_id])
    @celebrities = Celebrity.all
    @booking = Booking.new

  end

  def create
    @celebrity = Celebrity.find(params[:celebrity_id])
    @booking = Booking.new(booking_params)
    @booking.celebrity = @celebrity
    @booking.user = current_user # Associe l'utilisateur connecté à la réservation

    price_vs_time

    if @booking.save
      redirect_to celebrity_path(@celebrity), notice: "Réservation réussie !"
    else
      flash.now[:alert] = "Erreur lors de la réservation. Veuillez réessayer."
      render :new
    end
  end

  private



  def booking_params
    params.require(:booking).permit(:activity, :total_price, :date_start, :date_end)
  end

  def price_vs_time
    if @booking.date_start && @booking.date_end
      duration_in_hours = ((@booking.date_end - @booking.date_start) / 1.hour).round
      @booking.total_price = duration_in_hours * @celebrity.price_per_hour
    else
      @booking.total_price = @celebrity.price_per_hour
    end
  end
end
