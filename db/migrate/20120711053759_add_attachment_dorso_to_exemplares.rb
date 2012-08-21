class AddAttachmentDorsoToExemplares < ActiveRecord::Migration
  def self.up
    change_table :exemplares do |t|
      t.has_attached_file :dorso
    end
  end

  def self.down
    drop_attached_file :exemplares, :dorso
  end
end
