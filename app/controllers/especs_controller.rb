
class EspecsController < ApplicationController
  before_filter :authenticate
  
  # GET /especs
  # GET /especs.json
  def index
    @especs = Espec.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @especs }
    end
  end

  # GET /especs/1
  # GET /especs/1.json
  def show
    @espec = Espec.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @espec }
    end
  end

  # GET /especs/new
  # GET /especs/new.json
  def new
    @espec = Espec.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @espec }
    end
  end

  # GET /especs/1/edit
  def edit
    @espec = Espec.find(params[:id])
  end

  # POST /especs
  # POST /especs.json
  def create
    @espec = Espec.new(params[:espec])

    respond_to do |format|
      if @espec.save
        format.html { redirect_to especs_path, notice: 'Espec was successfully created.' }
        format.json { render json: @espec, status: :created, location: @espec }
      else
        format.html { render action: "new" }
        format.json { render json: @espec.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /especs/1
  # PUT /especs/1.json
  def update
    @espec = Espec.find(params[:id])

    respond_to do |format|
      if @espec.update_attributes(params[:espec])
        format.html { redirect_to especs_path, notice: 'Espec was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @espec.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /especs/1
  # DELETE /especs/1.json
  def destroy
    @espec = Espec.find(params[:id])
    @espec.destroy

    respond_to do |format|
      format.html { redirect_to especs_url }
      format.json { head :no_content }
    end
  end
end
