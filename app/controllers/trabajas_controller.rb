class TrabajasController < ApplicationController
  before_action :set_trabaja, only: [:show, :edit, :update, :destroy]

  # GET /trabajas
  # GET /trabajas.json
  def index
    @trabajas = Trabaja.all
  end

  # GET /trabajas/1
  # GET /trabajas/1.json
  def show
  end

  # GET /trabajas/new
  def new
    @trabaja = Trabaja.new
  end

  # GET /trabajas/1/edit
  def edit
  end

  # POST /trabajas
  # POST /trabajas.json
  def create
    @trabaja = Trabaja.new(trabaja_params)

    respond_to do |format|
      if @trabaja.save
        format.html { redirect_to @trabaja, notice: 'Trabaja was successfully created.' }
        format.json { render :show, status: :created, location: @trabaja }
      else
        format.html { render :new }
        format.json { render json: @trabaja.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trabajas/1
  # PATCH/PUT /trabajas/1.json
  def update
    respond_to do |format|
      if @trabaja.update(trabaja_params)
        format.html { redirect_to @trabaja, notice: 'Trabaja was successfully updated.' }
        format.json { render :show, status: :ok, location: @trabaja }
      else
        format.html { render :edit }
        format.json { render json: @trabaja.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trabajas/1
  # DELETE /trabajas/1.json
  def destroy
    @trabaja.destroy
    respond_to do |format|
      format.html { redirect_to trabajas_url, notice: 'Trabaja was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trabaja
      @trabaja = Trabaja.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def trabaja_params
      params.fetch(:trabaja, {})
    end
end
