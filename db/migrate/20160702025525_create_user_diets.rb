class CreateUserDiets < ActiveRecord::Migration
  def change
    create_table :user_diets do |t|
      t.integer :user_id, null: false
      t.integer :diet_id, null: false 
    end
  end
end
