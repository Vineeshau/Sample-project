class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  belongs_to :role
  has_many :items, dependent: :destroy
  validates :name, presence: true
  before_save :assign_role

  def assign_role
    self.role = Role.find 1 if role.nil?
  end
end
