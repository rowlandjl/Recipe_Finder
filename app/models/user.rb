class User < ActiveRecord::Base
  has_many :user_allergies
  has_many :user_diets

  validates :first_name, presence: true
  validates :last_name, presence: true

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
