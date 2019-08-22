class SpotsController < ApplicationController
  def index
    if params[:query].present?
      @spots = Spot.search_by_city_and_date(params[:query])
    else
      @spots = Spot.all
    end

    @spots = @spots.geocoded
    @markers = @spots.map do |spot|
      {
        lat: spot.latitude,
        lng: spot.longitude,
        infoWindow: render_to_string(partial: "infowindow", locals: { spot: spot }),
        image_url: helpers.asset_url('kisspng-tennis-balls-logo-5b1f5f29e9c310.0679543415287826339575.png')
      }
    end
  end

  def show
    @spot = Spot.find(params[:id])
    @reservation = Reservation.new

    @markers = [{
      lat: @spot.latitude,
      lng: @spot.longitude
    }]
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
    @myspots = Spot.where(user: current_user)
  end

  private

  def spot_params
    params.require(:spot).permit(:description, :price, :address, :city, :photo)
  end
end
