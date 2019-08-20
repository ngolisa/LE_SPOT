class ReservationsController < ApplicationController
  def create
    @reservation = Reservation.new(reservation_params)
    @reservation.user = current_user
    @reservation.save
    redirect_to spot_path(@reservation.spot)
  end

  private

  def reservation_params
    params.require(:reservation).permit(:date, :spot_id)
  end
end
