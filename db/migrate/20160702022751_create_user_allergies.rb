class CreateUserAllergies < ActiveRecord::Migration
  def change
    create_table :user_allergies do |t|
      t.integer :user_id, null: false
      t.integer :allergy_id, null: false
    end
  end
end
