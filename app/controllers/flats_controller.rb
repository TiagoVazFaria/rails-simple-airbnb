class FlatsController < ApplicationController

before_action :fetch_flats, only: [:show, :update, :destroy]

  def index
    @flats = Flat.all
  end

  def show

  end

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.new(flat_params)
    if @flat.save
      redirect_to @flat
    else
      render :new
    end
  end

  def edit
    @flat = Flat.find(params[:id])
  end

  def update
    @flat.update(flat_params)
    redirect_to @flat
  end

  def destroy

  end

  private

  def fetch_flats
    @flat = Flat.find(params[:id])
  end

  def flat_params
    params.require(:flat).permit(:name, :address, :price_per_night, :number_of_guests, :img_url)
  end
end
