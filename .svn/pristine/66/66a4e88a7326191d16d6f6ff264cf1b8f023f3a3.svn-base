class CreateFamilia < ActiveRecord::Migration
  def change
    create_table :familia do |t|
      t.string :descricao
      t.boolean :status
      t.integer :ordem_id
      t.references :ordem

      t.timestamps
    end
    add_index :familia, :ordem_id
  end
end
