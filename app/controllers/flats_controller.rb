class FlatsController < ApplicationController
  before_action :set_flat, only: [:show, :edit, :update, :destroy]

  def index
    @flats = Flat.all
  end

  def new
    @flat = Flat.new
  end

  def create
    flat = Flat.create(flat_params)
    redirect_to flats_path if flat.save
  end

  def show
  end

  def edit
  end

  def update
    redirect_to flat_path(@flat) if @flat.update(flat_params)
  end

  def destroy
    redirect_to flats_path if @flat.destroy
  end

  private

  def set_flat
    @flat = Flat.find(params[:id])
  end

  def flat_params
    params.require(:flat).permit(:name, :address, :description, :price_per_night, :number_of_guests)
  end
end
