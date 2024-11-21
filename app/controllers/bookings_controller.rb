class BookingsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_celebrity, only: [:index]

  def index
    @bookings = @celebrity&.bookings || []
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
      flash[:notice] = "Votre demande de réservation a été prise en compte."
      redirect_to dashboard_path
    else
      flash.now[:alert] = "Erreur lors de la réservation. Veuillez réessayer."
      render :new
    end
  end


  def accept
    @celebrity = Celebrity.find(params[:celebrity_id])
    @booking = Booking.find(params[:id])
    @booking.accepted!
    respond_to do |format| format.html { redirect_to request.referrer || root_path, notice: 'Booking accepted!' } end
  end

  def refuse
    @celebrity = Celebrity.find(params[:celebrity_id])
    @booking = Booking.find(params[:id])
    @booking.refused!
    respond_to do |format| format.html { redirect_to request.referrer || root_path, notice: 'Booking refuse!' } end
  end

  def update
    if params[:status].present? && Booking::STATUSES.include?(params[:status])
      @booking.update(status: params[:status])
      redirect_to bookings_path, notice: "Statut mis à jour avec succès."
    else
      redirect_to bookings_path, alert: "Statut invalide."
    end
  end



  private

  def booking_params
    params.require(:booking).permit(:activity, :total_price, :date_start, :date_end, :status)
  end

  def price_vs_time
    if @booking.date_start && @booking.date_end
      duration_in_hours = ((@booking.date_end - @booking.date_start) / 1.hour).round
      @booking.total_price = duration_in_hours * @celebrity.price_per_hour
    else
      @booking.total_price = @celebrity.price_per_hour
    end
  end

  def set_celebrity
    @celebrity = current_user.celebrities.find_by(id: params[:celebrity_id])
  end
end
