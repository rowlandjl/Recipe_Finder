class Diet < ActiveRecord::Base
  validates :name, presence: true 
end
