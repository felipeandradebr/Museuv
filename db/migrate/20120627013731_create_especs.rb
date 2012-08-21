class CreateEspecs < ActiveRecord::Migration
  def change
    create_table :especs do |t|
      t.string :descricao
      t.boolean :status
      t.integer :genero_id
      t.references :genero

      t.timestamps
    end
    add_index :especs, :genero_id
  end
end
