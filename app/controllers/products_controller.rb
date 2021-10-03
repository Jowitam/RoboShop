class ProductsController < ApplicationController
  def index
    @products = Product.order(created_at: :desc).limit(9)
  end

  def show
    @product = Product.find(params[:id])
  end
end
