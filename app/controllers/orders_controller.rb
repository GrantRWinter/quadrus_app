class OrdersController < ApplicationController

  before_action :load_car, only: [:new, :create]

  def new
    # @car = Car.find(params[:car_id])
    @order = Order.new
  end

  def create
    # @car = Car.find(params[:car_id])
    @order = @car.orders.create(order_params)
    if @order.save
      redirect_to cars_path, notice: "Successfully ordered. One of our Reps will contact you shortly"
    end
  end

  private
    def order_params
      params.require(:order).permit(:customer_first_name, :customer_last_name, :car_id)
    end

    def load_car
      @car = Car.find(params[:car_id])
    end
end
