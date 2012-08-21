class AddSenhaConfirmationToUsuarios < ActiveRecord::Migration
  def change
	add_column :usuarios, :senha_confirmation, :string
  end
end
