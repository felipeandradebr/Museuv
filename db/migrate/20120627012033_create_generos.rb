class CreateGeneros < ActiveRecord::Migration
  def change
    create_table :generos do |t|
      t.string :descricao
      t.boolean :status
      t.integer :familia_id
      t.references :familia

      t.timestamps
    end
    add_index :generos, :familia_id
  end
end
