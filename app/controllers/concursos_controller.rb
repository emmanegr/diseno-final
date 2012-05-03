class ConcursosController < ApplicationController
  # GET /concursos
  # GET /concursos.json
  
  before_filter :es_admin, :only => [:edit, :destroy, :new, :update, :index]
  def index
    @concursos = Concurso.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @concursos }
    end
  end

  # GET /concursos/1
  # GET /concursos/1.json
  def show
    @concurso = Concurso.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @concurso }
    end
  end

  # GET /concursos/new
  # GET /concursos/new.json
  def new
    @concurso = Concurso.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @concurso }
    end
  end

  # GET /concursos/1/edit
  def edit
    @concurso = Concurso.find(params[:id])
  end

  # POST /concursos
  # POST /concursos.json
  def create
    @concurso = Concurso.new(params[:concurso])

    respond_to do |format|
      if @concurso.save
        format.html { redirect_to @concurso, notice: 'Concurso was successfully created.' }
        format.json { render json: @concurso, status: :created, location: @concurso }
      else
        format.html { render action: "new" }
        format.json { render json: @concurso.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /concursos/1
  # PUT /concursos/1.json
  def update
    @concurso = Concurso.find(params[:id])

    respond_to do |format|
      if @concurso.update_attributes(params[:concurso])
        format.html { redirect_to @concurso, notice: 'Concurso was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @concurso.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /concursos/1
  # DELETE /concursos/1.json
  def destroy
    @concurso = Concurso.find(params[:id])
    @concurso.destroy

    respond_to do |format|
      format.html { redirect_to concursos_url }
      format.json { head :ok }
    end
  end
end
