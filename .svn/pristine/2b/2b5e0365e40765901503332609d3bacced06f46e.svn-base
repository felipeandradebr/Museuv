class CreateExemplars < ActiveRecord::Migration
  def change
    create_table :exemplars do |t|
      t.string :nome_vulgar
      t.string :nome_cientifico
      t.string :codigo_identificacao
      t.string :local_origem
      t.string :localizacao_geografica
      t.string :identificador
      t.date :data_coleta
      t.date :data_chegada
      t.binary :foto_costas
      t.binary :foto_dorso
      t.string :localizacao_exemplar
      t.text :biografia
      t.boolean :status

      t.timestamps
    end
  end
end
