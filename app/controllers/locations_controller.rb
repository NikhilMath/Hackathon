class LocationsController < ApplicationController
  before_action :set_location, only: [:show, :edit, :update, :destroy] 
  def index
    @locations = current_trip.locations 
  end

  def show
  end

  def new
    @location = Location.new 
  end

  def edit 
  end

  private
  def set_location
    @location = current_trip.location.find(params[:id])
  end

  def location_params
    params.require(:location).permit(:loc_name)
  end
end
