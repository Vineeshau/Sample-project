class ProductsController < ApplicationController
  before_action :authenticate_customer!

  def index
    @products = Product.all.order(:id)
  end

  def show
    @product = Product.find(params[:id])
  end

  private

  def product_params
    params.permit(:name, :quantity, :price)
  end
end
