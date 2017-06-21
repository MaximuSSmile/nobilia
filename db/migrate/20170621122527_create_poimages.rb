class CreatePoimages < ActiveRecord::Migration
  def change
    create_table :poimages do |t|
      t.belongs_to :portfolio, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
