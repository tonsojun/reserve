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

  end
end
