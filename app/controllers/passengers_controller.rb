class PassengersController < ApplicationController
  def index
    @passengers = Passenger.all
  end

  # def show
  #   id = params[:id].to_i
  #   @passenger = Passenger.find_by(id: id)
  # end
end