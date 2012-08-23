
class UsuariosController < ApplicationController
#before_filter :authenticate

def index
	@usuarios = Usuario.paginate(:page => params[:page])
end

def new 
	@usuario = Usuario.new
end

def show
	@usuario = Usuario.find(params[:id])
end

def create
	@usuario = Usuario.new(params[:usuario])
    if @usuario.save
      flash[:aviso] = 'Usuario cadastrado com sucesso!'
      redirect_to usuarios_path #Redireciona para a listagem de usuários
    else
	  flash[:aviso] = 'O formulário contém erros. Verifique	os campos digitados e envie novamente. '
	  render :action => "new"
	end
end

def edit
    @usuario = Usuario.find(params[:id])
end

def update
    @usuario = Usuario.find(params[:id])
    if @usuario.update_attributes(params[:usuario])
       flash[:aviso] = 'Usuário atualizado.'
       redirect_to usuarios_path
    else
	  flash[:aviso] = 'O formulário contém erros. Verifique	os campos digitados e envie novamente. '
	  render :action => "edit"
	end
	
  end

end
