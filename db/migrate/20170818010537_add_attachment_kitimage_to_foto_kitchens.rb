class AddAttachmentKitimageToFotoKitchens < ActiveRecord::Migration
  def self.up
    change_table :foto_kitchens do |t|
      t.attachment :kitimage
    end
  end

  def self.down
    remove_attachment :foto_kitchens, :kitimage
  end
end
