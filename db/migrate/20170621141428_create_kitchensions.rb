class CreateKitchensions < ActiveRecord::Migration
  def change
    create_table :kitchensions do |t|
      t.string :kit
      t.belongs_to :portfolio, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
