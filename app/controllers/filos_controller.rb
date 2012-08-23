
class FilosController < ApplicationController
	before_filter :authenticate

  # GET /filos
  # GET /filos.json
  def index
    @filos = Filo.paginate(:page => params[:page])

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @filos }
    end
  end

  # GET /filos/1
  # GET /filos/1.json
  def show
    @filo = Filo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @filo }
    end
  end

  # GET /filos/new
  # GET /filos/new.json
  def new
    @filo = Filo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @filo }
    end
  end

  # GET /filos/1/edit
  def edit
    @filo = Filo.find(params[:id])
  end

  # POST /filos
  # POST /filos.json
  def create
    @filo = Filo.new(params[:filo])

    respond_to do |format|
      if @filo.save
        format.html { redirect_to filos_path, notice: 'Filo was successfully created.' }
        format.json { render json: @filo, status: :created, location: @filo }
      else
        format.html { render action: "new" }
        format.json { render json: @filo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /filos/1
  # PUT /filos/1.json
  def update
    @filo = Filo.find(params[:id])

    respond_to do |format|
      if @filo.update_attributes(params[:filo])
        format.html { redirect_to filos_path, notice: 'Filo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @filo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /filos/1
  # DELETE /filos/1.json
  def destroy
    @filo = Filo.find(params[:id])
    @filo.destroy

    respond_to do |format|
      format.html { redirect_to filos_url }
      format.json { head :no_content }
    end
  end
end
