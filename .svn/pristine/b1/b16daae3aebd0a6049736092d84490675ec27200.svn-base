
class OrdemsController < ApplicationController
  before_filter :authenticate
  
  # GET /ordems
  # GET /ordems.json
  def index
    @ordems = Ordem.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @ordems }
    end
  end

  # GET /ordems/1
  # GET /ordems/1.json
  def show
    @ordem = Ordem.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @ordem }
    end
  end

  # GET /ordems/new
  # GET /ordems/new.json
  def new
    @ordem = Ordem.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @ordem }
    end
  end

  # GET /ordems/1/edit
  def edit
    @ordem = Ordem.find(params[:id])
  end

  # POST /ordems
  # POST /ordems.json
  def create
    @ordem = Ordem.new(params[:ordem])

    respond_to do |format|
      if @ordem.save
        format.html { redirect_to ordems_path, notice: 'Ordems was successfully created.' }
        format.json { render json: @ordem, status: :created, location: @ordem }
      else
        format.html { render action: "new" }
        format.json { render json: @ordem.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /ordems/1
  # PUT /ordems/1.json
  def update
    @ordem = Ordem.find(params[:id])

    respond_to do |format|
      if @ordem.update_attributes(params[:ordem])
        format.html { redirect_to ordems_path, notice: 'Ordem was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @ordem.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ordems/1
  # DELETE /ordems/1.json
  def destroy
    @ordem = Ordem.find(params[:id])
    @ordem.destroy

    respond_to do |format|
      format.html { redirect_to ordems_url }
      format.json { head :no_content }
    end
  end
end
