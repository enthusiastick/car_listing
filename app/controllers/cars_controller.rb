class CarsController < ApplicationController

  def create
    @car = Car.new(params.require(:car).permit(:color, :year, :mileage, :description))
    if @car.save
      redirect_to @car, notice: 'Listing successfully created.'
    else
      render action: 'new'
    end
  end

  def index
    @cars = Car.all
  end

  def new
    @car = Car.new
    @options = DateTime.now.year.downto(1980).to_a
    @options.unshift(nil)
  end

  def show
    @car = Car.find(params[:id])
  end

end
