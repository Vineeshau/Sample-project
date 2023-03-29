class Exam < ApplicationRecord
  belongs_to :subject
  has_many :student_exams
end
