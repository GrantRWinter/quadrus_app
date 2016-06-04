class Admins::CarsController < ApplicationController

  def new
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)
    if @car.save
      redirect_to cars_path
    end
  end

  private

    def car_params
      params.require(:car)
        .permit(:make, :model, :description)
    end
end
