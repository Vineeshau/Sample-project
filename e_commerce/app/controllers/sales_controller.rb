class SalesController < ApplicationController
  before_action :authenticate_customer!

  def index
    @sales = Sale.all
    # binding.pry
    @sale = Sale.new
    @sale.product_id = params[:product_id]
    @sale.customer_id = current_customer.id
    @sale.quantity = 1
  end

  def new
    # binding.pry
    @sale = Sale.new
  end

  def create
    @sale = Sale.create(sale_params)
    @sale.customer_id = current_customer.id
    @sale.quantity = 1
    @sale.save
    # binding.pry
    redirect_to products_path
  end


  private

  def sale_params
    params.permit(:product_id, :customer_id, :quantity, :payment_status)
  end
end
