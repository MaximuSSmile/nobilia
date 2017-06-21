class Poimage < ActiveRecord::Base
  belongs_to :portfolio

  	has_attached_file :pimg, styles: { :medium => "400x400#" }
	validates_attachment_content_type :pimg, content_type: /\Aimage\/.*\Z/
end
