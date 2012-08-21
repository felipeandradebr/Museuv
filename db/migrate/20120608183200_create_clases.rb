class CreateClases < ActiveRecord::Migration
  def change
    create_table :clases do |t|
      t.string :descricao
      t.boolean :status
      t.references :filo

      t.timestamps
    end
    add_index :clases, :filo_id
  end
end
