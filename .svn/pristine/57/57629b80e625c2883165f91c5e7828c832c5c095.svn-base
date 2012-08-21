
class InicioController < ApplicationController

#Nesta ação, atualizamos a tabela de exemplares com os examplares cadastrados.
def index
	#@message = 'Hello, museu.'
	@exemplars = Exemplar.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @exemplars }
    end
end

def busca
	
	#puts params[:search_string]
	puts "teste de acesso a busca"
	
end

end
