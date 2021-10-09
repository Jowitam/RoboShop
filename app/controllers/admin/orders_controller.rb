class Admin::OrdersController < ApplicationController
  def index
    @orders = Order.not_in_state(:new).page(params[:page]).per(20)
  end

  def show
    @order = Order.find(params[:id])
  end
end
