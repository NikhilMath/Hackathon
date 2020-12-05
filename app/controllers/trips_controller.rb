class TripsController < ApplicationController
  before_action :set_trip, only: [:show, :edit, :update, :destroy] 
  def index
    @trips = current_user.trips  
  end

  def show
  end

  def create
    @trip = current_user.trips.new(trip_params)
    if @trip.save 
      flash[:success] = "Trip Created"
      redirect_to trips_path
    else
      flash[:error] = "Error #{@trip.errors.full_messages.join('\n')}"
      render :new
    end
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
