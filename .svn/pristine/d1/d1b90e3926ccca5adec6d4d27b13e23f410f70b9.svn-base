class CreateExemplares < ActiveRecord::Migration
  def change
    create_table :exemplares do |t|
      t.string :nome_vulgar
      t.string :nome_cientifico
      t.string :codigo_identificacao
      t.string :local_origem
      t.string :localizacao_geografica
      t.string :identificador
      t.string :localizacao_acervo
      t.text :biografia
      t.date :data_coleta
      t.date :data_chegada
      t.boolean :status
      t.integer :clase_id
      t.references :clase
      t.integer :ordem_id
      t.references :ordem
      t.integer :familia_id
      t.references :familia
      t.integer :genero_id
      t.references :genero
      t.integer :espec_id
      t.references :espec

      t.timestamps
    end
    add_index :exemplares, :clase_id
    add_index :exemplares, :ordem_id
    add_index :exemplares, :familia_id
    add_index :exemplares, :genero_id
    add_index :exemplares, :espec_id
  end
end
