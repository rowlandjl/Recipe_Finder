class Diet < ActiveRecord::Base
  has_many :user_diets
  
  validates :name, presence: true
end
