class CreateFilos < ActiveRecord::Migration
  def change
    create_table :filos do |t|
      t.string :descricao
      t.boolean :status

      t.timestamps
    end
  end
end
