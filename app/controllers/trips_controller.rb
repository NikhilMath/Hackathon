class TripsController < ApplicationController
  before_action :set_trip, only: [:show, :edit, :update, :destroy] 
  def index
    @trips = current_user.trips  
  end

  def show
  end

  def new
    @trip = Trip.new 
  end

  def edit 
  end

  private
  def set_trip
    @trip = current_user.trip.find(params[:id])
  end

  def trip_params
    params.require(:trip).permit(:name, :duration)
  end
end
