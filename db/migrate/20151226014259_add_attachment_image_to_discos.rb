class AddAttachmentImageToDiscos < ActiveRecord::Migration
  def self.up
    change_table :discos do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :discos, :image
  end
end
