class CreateKitchens < ActiveRecord::Migration
  def change
    create_table :kitchens do |t|
      t.string :kitchen
      t.text :description
      t.integer :kitchen_turn
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
