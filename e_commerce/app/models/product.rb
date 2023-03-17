class Product < ApplicationRecord
	has_many :customers, through: :sales
	has_many :sales
end
