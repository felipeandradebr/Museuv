class AdicionarStatusUsuario < ActiveRecord::Migration
  def change
  
	add_column :usuarios, :status, :boolean
  
  end

end
