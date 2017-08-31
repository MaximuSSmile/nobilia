class CreateFurnitureFirms < ActiveRecord::Migration
  def change
    create_table :furniture_firms do |t|
      t.string :firm
      t.text :description
      t.integer :furniture_firm_turn
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
