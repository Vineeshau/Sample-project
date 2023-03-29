class Department < ApplicationRecord
  validates :name, :age, :email, :place, presence: true

  has_many :groups
  has_many :teachers, through: :groups
  has_many :subjects
  has_many :exams
end
