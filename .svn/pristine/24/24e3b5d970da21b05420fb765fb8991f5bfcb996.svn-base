
class SessionsController < ApplicationController

	def create
	
		if usuario = Usuario.authenticate(params[:usuario], params[:hashed_password])
			session[:usuario_id] = usuario.id
			redirect_to root_path, :notice => "Logado com Sucesso!"
		else
			flash.now[:alert] = "Login ou Senha inválidos!"
			render :action => 'new'
			
		end
	
	end
	
	def destroy
		reset_session
		redirect_to :login, :notice => "Saiu do sistema"
  end

end
