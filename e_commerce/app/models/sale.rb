class Sale < ApplicationRecord
	belongs_to :product
	belongs_to :customer, optional: true
end
