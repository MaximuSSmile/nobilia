class CreateTechnitions < ActiveRecord::Migration
  def change
    create_table :technitions do |t|
      t.string :tech
      t.belongs_to :portfolio, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
