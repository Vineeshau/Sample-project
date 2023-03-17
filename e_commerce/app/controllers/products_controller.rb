class ProductsController < ApplicationController
  before_action :authenticate_customer!

  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
  end

  def edit
  end

  def update
  end

  private

  def product_params
    params.permit(:name, :quantity, :price)
  end
end
