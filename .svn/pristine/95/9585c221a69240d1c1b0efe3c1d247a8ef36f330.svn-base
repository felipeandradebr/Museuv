class RenamePasswordToHashedPassword < ActiveRecord::Migration
  def up
	
	rename_column :usuarios, :senha, :hashed_password
  
  end

  def down
	
	rename_column :usuarios, :hashed_password, :senha
  
  end
end
