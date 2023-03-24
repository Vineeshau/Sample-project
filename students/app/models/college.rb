class College < ApplicationRecord
  validates :department_id, :user_id, :student_id, presence: true

  belongs_to :user
  belongs_to :department
  belongs_to :student
end
