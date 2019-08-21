class SpotsController < ApplicationController
  def index
    @spots = Spot.all
  end

  def show
    @spot = Spot.find(params[:id])
    @reservation = Reservation.new
  end

  def new
    @spot = Spot.new
  end

  def create
    @spot = Spot.new(spot_params)
    @spot.user = current_user
    if @spot.save
      redirect_to spot_path(@spot)
    else
      render 'new'
    end
  end

  def update
    @spot = Spot.find(params[:id])
    if @spot.update(spot_params)
      redirect_to spot_path(@spot)
    else
      render 'update'
    end
  end

  def edit
    @spot = Spot.find(params[:id])
  end

  def destroy
    @spot = Spot.find(params[:id])
    @spot.destroy
    redirect_to spots_path
  end

  def my
    @spots = Spot.where(current_user == :user)
  end

  private

  def spot_params
    params.require(:spot).permit(:description, :price, :address, :city, :photo)
  end
end
