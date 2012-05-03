class BecasController < ApplicationController
  # GET /becas
  # GET /becas.json
  def index
    @becas = Beca.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @becas }
    end
  end

  # GET /becas/1
  # GET /becas/1.json
  def show
    @beca = Beca.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @beca }
    end
  end

  # GET /becas/new
  # GET /becas/new.json
  def new
    @beca = Beca.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @beca }
    end
  end

  # GET /becas/1/edit
  def edit
    @beca = Beca.find(params[:id])
  end

  # POST /becas
  # POST /becas.json
  def create
    @beca = Beca.new(params[:beca])

    respond_to do |format|
      if @beca.save
        format.html { redirect_to @beca, notice: 'Beca was successfully created.' }
        format.json { render json: @beca, status: :created, location: @beca }
      else
        format.html { render action: "new" }
        format.json { render json: @beca.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /becas/1
  # PUT /becas/1.json
  def update
    @beca = Beca.find(params[:id])

    respond_to do |format|
      if @beca.update_attributes(params[:beca])
        format.html { redirect_to @beca, notice: 'Beca was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @beca.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /becas/1
  # DELETE /becas/1.json
  def destroy
    @beca = Beca.find(params[:id])
    @beca.destroy

    respond_to do |format|
      format.html { redirect_to becas_url }
      format.json { head :ok }
    end
  end
end
