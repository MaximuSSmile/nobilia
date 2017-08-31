class FurnitureFirm < ActiveRecord::Base

	belongs_to :user

	has_many :furnitures

    validates :firm, :description, :furniture_firm_turn, presence: true
end
