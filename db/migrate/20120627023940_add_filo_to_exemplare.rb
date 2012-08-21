class AddFiloToExemplare < ActiveRecord::Migration
  def change
	add_column :exemplares, :filo_id, :integer
  end
end
