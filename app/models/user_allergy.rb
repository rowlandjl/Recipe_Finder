class UserAllergy < ActiveRecord::Base
  belongs_to :user
  belongs_to :allergy

  validates :user, presence: true
  validates :allergy, presence: true 
end
