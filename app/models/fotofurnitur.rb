class Fotofurnitur < ActiveRecord::Base
  belongs_to :furnitur

    has_attached_file :furimage, styles: { :medium => "600x400#", # :smale => "600x400>",
    	 :hard => "2400x1200#" }
	validates_attachment_content_type :furimage, content_type: /\Aimage\/.*\Z/
end


  has_many :foto_furniturs


  accepts_nested_attributes_for :foto_furnitur,
                                reject_if: proc { |attributes| attributes['furtitle'].blank? },
                                allow_destroy: true,
                                reject_if: proc { |attributes| attributes['furdesc'].blank? },
                                allow_destroy: true
                                  reject_if: proc { |attributes| attributes['furturn'].blank? },
                                allow_destroy: true,
                                reject_if: proc { |attributes| attributes['furmodel'].blank? },
                                allow_destroy: true
                                  reject_if: proc { |attributes| attributes['furmaterial'].blank? },
                                allow_destroy: true,
                                reject_if: proc { |attributes| attributes['furmanufacture'].blank? },
                                allow_destroy: true
                                  reject_if: proc { |attributes| attributes['furimage'].blank? },
                                allow_destroy: true,

  #title:string desckription:text turn:integer model:string material:text manufacture:string


  validates :title, :description, :furniture_turn, :image, presence: true

  has_attached_file :image, styles: { :medium => "600x400#", :hard => "2400x1200#" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/