class CreateImagems < ActiveRecord::Migration
  def change
    create_table :imagems do |t|
      t.references :exemplare

      t.timestamps
    end
    add_index :imagems, :exemplare_id
  end
end
