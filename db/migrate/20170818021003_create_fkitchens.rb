class CreateFkitchens < ActiveRecord::Migration
  def change
    create_table :fkitchens do |t|
      t.string :title
      t.text :description
      t.integer :turn
      t.string :model
      t.text :material
      t.string :manufacture
      t.belongs_to :kitchen, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
