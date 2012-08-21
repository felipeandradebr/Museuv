class CreateOrdems < ActiveRecord::Migration
  def change
    create_table :ordems do |t|
      t.string :descricao
      t.boolean :status
      t.integer :clase_id
      t.references :clase

      t.timestamps
    end
    add_index :ordems, :clase_id
  end
end
