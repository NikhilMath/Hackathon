class AddressesController < ApplicationController
  before_action :set_address, only: [:show, :edit, :update, :destroy] 
  def index
    @addresses = current_location.addresses  
  end

  def show
  end

  def new
    @address = Address.new 
  end

  def edit 
  end

  private
  def set_address
    @address = current_location.address.find(params[:id])
  end

  def address_params
    params.require(:address).permit(:street, :state, :city, :country, :region, :zip)
  end
end
