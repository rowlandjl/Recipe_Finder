class UserDiet < ActiveRecord::Base
  belongs_to :user
  belongs_to :diet

  validates :user, presence: true
  validates :diet, presence: true 
end
