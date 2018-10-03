class PassengersController < ApplicationController
  def index
    @passengers = Passenger.all
  end

  def show
    id = params[:id].to_i
    @passenger = Passenger.find_by(id: id)
    #@driver = Driver.find_by(id: params[:id])
  end

  def new
    @passenger = Passenger.new
  end

  def create
    @passenger = Passenger.new(passenger_params)
    if @passenger.save
      redirect_to passengers_path
    else
      puts "#{@passengers.errors}"
      render :new
    end
  end

  def edit
    @passenger = Passenger.find_by(id: params[:id].to_i)
  end

  def update
    @passenger = Passenger.find_by(id: params[:id].to_i)
    @passenger.update(passenger_params)

    redirect_to passenger_path(@passenger.id)
  end


  def destroy
    passenger = Passenger.find_by(id: params[:id].to_i)
    passenger.destroy

    redirect_to passengers_path
  end

  private

  def passenger_params
    return params.require(:passenger).permit(:name, :phone_num)
  end

end
