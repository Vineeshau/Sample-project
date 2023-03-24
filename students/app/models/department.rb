class Department < ApplicationRecord
  validates :name, :age, :email, :place, presence: true

  has_many :students
  has_many :users
end
