
class ExemplaresController < ApplicationController
  before_filter :authenticate
  
  # GET /exemplares
  # GET /exemplares.json
  def index
    #@exemplares = Exemplare.all
	@exemplares = Exemplare.search(params)
	
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @exemplares }
    end
  end

  # GET /exemplares/1
  # GET /exemplares/1.json
  def show
    @exemplare = Exemplare.find(params[:id])
	@generos = Genero.all
	@familia = Familium.all
	@ordems = Ordem.all
	@clases = Clase.all
	@filos = Filo.all

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @exemplare }
    end
  end

  # GET /exemplares/new
  # GET /exemplares/new.json
  def new
    @exemplare = Exemplare.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @exemplare }
    end
  end

  # GET /exemplares/1/edit
  def edit
    @exemplare = Exemplare.find(params[:id])
  end

  # POST /exemplares
  # POST /exemplares.json
  def create
    @exemplare = Exemplare.new(params[:exemplare])

    respond_to do |format|
      if @exemplare.save
        format.html { redirect_to exemplares_path, notice: 'Exemplar criado com sucesso!' }
        format.json { render json: @exemplare, status: :created, location: @exemplare }
      else
        format.html { render action: "new" }
        format.json { render json: @exemplare.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /exemplares/1
  # PUT /exemplares/1.json
  def update
    @exemplare = Exemplare.find(params[:id])

    respond_to do |format|
      if @exemplare.update_attributes(params[:exemplare])
        format.html { redirect_to exemplares_path, notice: 'Exemplar atualizado com sucesso!' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @exemplare.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /exemplares/1
  # DELETE /exemplares/1.json
  def destroy
    @exemplare = Exemplare.find(params[:id])
    @exemplare.destroy

    respond_to do |format|
      format.html { redirect_to exemplares_url }
      format.json { head :no_content }
    end
  end
end
