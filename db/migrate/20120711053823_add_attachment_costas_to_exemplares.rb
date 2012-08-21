class AddAttachmentCostasToExemplares < ActiveRecord::Migration
  def self.up
    change_table :exemplares do |t|
      t.has_attached_file :costas
    end
  end

  def self.down
    drop_attached_file :exemplares, :costas
  end
end
