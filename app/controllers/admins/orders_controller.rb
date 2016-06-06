class Admins::OrdersController < ApplicationController

  def index
    @orders = Order.all
  end

  def destroy
    @order = Order.find(params[:id])
    @order.destroy
    redirect_to admins_orders_path
  end
end
