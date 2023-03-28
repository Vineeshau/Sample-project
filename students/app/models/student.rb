# frozen_string_literal: true

class Student < ApplicationRecord
  validates :name, :age, :email, :place, presence: true
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }

  has_one :department
  has_many :users, through: :departments
  belongs_to :college
  belongs_to :parent
  has_many :marks
end
