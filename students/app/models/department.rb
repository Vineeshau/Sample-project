class Department < ApplicationRecord
  validates :name, :age, :email, :place, presence: true

  has_many :students
  has_many :users
  has_many :colleges
  has_many :subjects
  has_many :exams
end
