class Allergy < ActiveRecord::Base
  has_many :user_allergies
  
  validates :name, presence: true
end
