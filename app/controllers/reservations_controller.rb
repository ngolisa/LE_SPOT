class ReservationsController < ApplicationController
  def index
    # @reservations = Reservation.where(user: current_user and distance_of_time_in_words(:date, DateTime.now) > 0
    @reservations = current_user.reservations.select { |r| r.date > DateTime.now }
    @oldreservations = current_user.reservations.select { |r| r.date <= DateTime.now }
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @reservation.user = current_user
    if @reservation.save
      redirect_to reservation_path(@reservation.id)
    else
      flash.alert = "Spot not available"
      redirect_to spot_path(@reservation.spot)
    end
  end

  def show
    @reservation = Reservation.find(params[:id])
  end

  def destroy
    @reservation = Reservation.find(params[:id])
    @reservation.destroy
    redirect_to reservations_path
  end

  private

  def reservation_params
    params.require(:reservation).permit(:date, :spot_id)
  end
end
