class Group < ApplicationRecord
  #class
  belongs_to :department
  belongs_to :teacher
  has_many :students
end
