class Fkitchen < ActiveRecord::Base
    belongs_to :kitchen

    	has_attached_file :kitimage, styles: { :medium => "600x400#", # :smale => "600x400>",
    	 :hard => "2400x1200#" }
	validates_attachment_content_type :kitimage, content_type: /\Aimage\/.*\Z/
end
