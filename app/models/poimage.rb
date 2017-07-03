class Poimage < ActiveRecord::Base
  belongs_to :portfolio

    	has_attached_file :pimg, styles: { :medium => "600x400#", # :smale => "600x400>",
    	 :hard => "2400x1400#" }
	validates_attachment_content_type :pimg, content_type: /\Aimage\/.*\Z/
end
