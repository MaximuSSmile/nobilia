class CreatePortfolios < ActiveRecord::Migration
  def change
    create_table :portfolios do |t|
      t.string :title
      t.string :city
      t.text :description1
      t.text :description2
      t.integer :user_id
      t.integer :portfolio_turn

      t.timestamps null: false
    end
  end
end
