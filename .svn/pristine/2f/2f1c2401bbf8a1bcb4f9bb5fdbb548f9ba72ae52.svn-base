class AddAttachmentFotoToImagems < ActiveRecord::Migration
  def self.up
    change_table :imagems do |t|
      t.has_attached_file :foto
    end
  end

  def self.down
    drop_attached_file :imagems, :foto
  end
end
