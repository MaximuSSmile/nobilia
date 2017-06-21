class AddAttachmentPimgToPoimages < ActiveRecord::Migration
  def self.up
    change_table :poimages do |t|
      t.attachment :pimg
    end
  end

  def self.down
    remove_attachment :poimages, :pimg
  end
end
