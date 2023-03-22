# frozen_string_literal: true

class Student < ApplicationRecord
  validates :name, :age, :email, :place, presence: true
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }
end
