class Subject < ApplicationRecord
  belongs_to :users
  belongs_to :department
end
