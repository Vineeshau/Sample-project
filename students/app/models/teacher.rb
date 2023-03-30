class Teacher < ApplicationRecord
  has_many :groups
  has_many :students, through: :groups
  belongs_to :department
  has_many :subjects
end
