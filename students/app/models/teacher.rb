class Teacher < ApplicationRecord
  has_many :groups
  belongs_to :department
  has_many :subjects
end
