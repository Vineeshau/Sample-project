class Subject < ApplicationRecord
  belongs_to :teacher
  has_many :exams
end
