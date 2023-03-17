class SalesController < ApplicationController
  before_action :authenticate_customer!

  def index
    # binding.pry
    @sales = Sale.all
  end

  def new
    binding.pry
    @sale = Sale.new
  end

  def create
    # binding.pry
    @sale = Sale.create(sale_params)
    @sale.save
    redirect_to products_path
  end


  private

  def sale_params
    params.permit(:product_id, :customer_id, :quantity)
  end
end
