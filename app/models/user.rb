class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  has_many :portfolios
  has_many :kitchens
  has_many :backgrounds
  has_many :mini_backgrounds
  has_many :portfolio_fotos
  has_many :kitchen_categories
end
