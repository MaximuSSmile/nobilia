class AddAttachmentKitimageToFkitchens < ActiveRecord::Migration
  def self.up
    change_table :fkitchens do |t|
      t.attachment :kitimage
    end
  end

  def self.down
    remove_attachment :fkitchens, :kitimage
  end
end
