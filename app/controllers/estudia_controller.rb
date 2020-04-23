class EstudiaController < ApplicationController
  #before_action :set_estudium, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource

  # GET /estudia
  # GET /estudia.json
  def index
    @estudia = Estudium.all
  end

  # GET /estudia/1
  # GET /estudia/1.json
  def show
  end

  # GET /estudia/new
  def new
    @estudium = Estudium.new
  end

  # GET /estudia/1/edit
  def edit
  end

  # POST /estudia
  # POST /estudia.json
  def create
    @estudium = Estudium.new(estudium_params)
    @forum.user = current_user
    respond_to do |format|
      if @estudium.save
        format.html { redirect_to @estudium, notice: 'Estudium was successfully created.' }
        format.json { render :show, status: :created, location: @estudium }
      else
        format.html { render :new }
        format.json { render json: @estudium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /estudia/1
  # PATCH/PUT /estudia/1.json
  def update
    respond_to do |format|
      if @estudium.update(estudium_params)
        format.html { redirect_to @estudium, notice: 'Estudium was successfully updated.' }
        format.json { render :show, status: :ok, location: @estudium }
      else
        format.html { render :edit }
        format.json { render json: @estudium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /estudia/1
  # DELETE /estudia/1.json
  def destroy
    @estudium.destroy
    respond_to do |format|
      format.html { redirect_to estudia_url, notice: 'Estudium was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_estudium
      @estudium = Estudium.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def estudium_params
      params.require(:estudium).permit(:nombre, :categoria, :descripcion, :ubicacion, :sede, :carreras, :modo, :nivel)
    end
end
