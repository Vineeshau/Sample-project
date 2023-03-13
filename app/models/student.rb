# frozen_string_literal: true

class Student < ApplicationRecord
  # validates :first_name, :last_name, :email, :country, :value, :image presence: true
  validates :phone, length: { :minimum => 10, :maximum => 15 } 
  validates_format_of :phone, :with =>  /\d[0-9]\)*\z/ 
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP } 
  mount_uploader :image, AvatarUploader
end
