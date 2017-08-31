class CreateFurnitures < ActiveRecord::Migration
  def change
    create_table :furnitures do |t|
      t.string :title
      t.text :description
      t.integer :furniture_turn
      t.integer :furniture_firm_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
