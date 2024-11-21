class CelebritiesController < ApplicationController
  def show
    @celebrity = Celebrity.find(params[:id])
  end

  def index
    @celebrities = Celebrity.all
    if params[:query].present?
      @celebrities = Celebrity.search_by(params[:query])
    end
  end

  def new
    @celebrity = Celebrity.new
  end

  def create
    @celebrity = Celebrity.new(celebrity_params)
    @celebrity.user_id = 1
    # @celebrity.booking = @booking
    if @celebrity.save
      redirect_to celebrity_path(@celebrity)
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

  def celebrity_params
    params.require(:celebrity).permit(:name, :price_per_hour, :location, photos: [])
  end
end
