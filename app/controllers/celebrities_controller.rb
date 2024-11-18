class CelebritiesController < ApplicationController
  def new
    @celibrity = Celebrity.new
  end

  def create
    @celebrity = Celebrity.new(celebrity_params)
    @celebrity.booking = @booking
    if @celebrity.save
      redirect_to booking_path(@booking)
    end
  end

  def update
    @celebrity = Celebrity.find(params[:id])
    @celebrity.update(celebrities_params) # Will raise ActiveModel::ForbiddenAttributesError
    redirect_to celebrity_path(@celebrities)
  end

  def edit
    @celebrity = Celebrity.find(params[:id])
  end

  def show
    @celebrity = Celebrity.find(params[:id])
  end

  def index
    @celebrity = Celebrity.all
  end

  def celebrities_params
    params.require(:celebrity).permit(:name, :prince_per_hour, :location)
  end
end
