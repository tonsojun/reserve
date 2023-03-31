class ReservationsController < ApplicationController

  def index
    @reservations = Reservation.all
  end

  def new 
    @reservation = Reservation.new
  end

  def edit

  end

  def show

  end

  def updated

  end

  def destroy

  end

  def create
    @reservation = Reservation.new(reservation_params)
        if @reservation.save
          flash[:notice] = 'Location saved'
          redirect_to reservation_path
        else
          flash[:alert] = 'There\'s an error - please check the required fields'
          redirect_to new_reservations_path
        end
  end

  private

  def reservation_params
    params.require(:reservation).permit(
      :customer_id,
      :restaraunt_id,
      :party_size,
      :time)
  end
end
