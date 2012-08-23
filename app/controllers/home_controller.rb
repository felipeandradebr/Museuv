
class HomeController < ApplicationController

def index
    #@exemplares = Exemplare.all
	@exemplares = Exemplare.paginate(:page => params[:page])
	
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @exemplares }
    end
  end

end
