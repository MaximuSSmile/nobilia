class CreateFurniturfirms < ActiveRecord::Migration
  def change
    create_table :furniturfirms do |t|
      t.string :firm
      t.text :desckription
      t.integer :furniturfirmturn
      t.belongs_to :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
