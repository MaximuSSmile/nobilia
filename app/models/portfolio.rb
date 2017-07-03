class Portfolio < ActiveRecord::Base
		belongs_to :user

	has_many :kitchensis
		has_many :kitchensions
	has_many :technitions
	has_many :poimages



	accepts_nested_attributes_for :kitchensions,
  															reject_if: proc { |attributes| attributes['kit'].blank? },
  															allow_destroy: true

 	accepts_nested_attributes_for :technitions,
  															reject_if: proc { |attributes| attributes['tech'].blank? },
  															allow_destroy: true

 	accepts_nested_attributes_for :poimages,
  															reject_if: proc { |attributes| attributes['imgnum'].blank? },
  															allow_destroy: true,
  															reject_if: proc { |attributes| attributes['pimg'].blank? },
  															allow_destroy: true


  validates :title, :city, :description1, :description2, :portfolio_turn, :image, presence: true

	has_attached_file :image, styles: { :medium => "600x400#", :hard => "2400x1200#" }
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
