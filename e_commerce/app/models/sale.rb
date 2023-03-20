class Sale < ApplicationRecord
	belongs_to :product
	belongs_to :customer
  after_commit :update_quantity, on: :create, if: :completed
end

def completed
  payment_status == "completed"
end

def update_quantity
  product.update(quantity: product.quantity -= 1)
end
