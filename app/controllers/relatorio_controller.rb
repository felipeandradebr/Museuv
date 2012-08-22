
class RelatorioController < ApplicationController

 def relatorrio_exemplares
	@exemplares = Exemplare.search(params)
	@exemplares = Exemplare.all
	@filos = Filo.all
	
	respond_to do |format|
      format.html
	end
end

  def show
	@exemplares = Exemplare.search(params)
	@filos = Filo.all

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @clase }
    end
  end
  
end