class AyudaLocalidadsController < ApplicationController
  before_action :set_ayuda_localidad, only: [:show, :edit, :update, :destroy]

  # GET /ayuda_localidads
  # GET /ayuda_localidads.json
  def index
    @ayuda_localidads = AyudaLocalidad.all
  end

  # GET /ayuda_localidads/1
  # GET /ayuda_localidads/1.json
  def show
  end

  # GET /ayuda_localidads/new
  def new
    @ayuda_localidad = AyudaLocalidad.new
  end

  # GET /ayuda_localidads/1/edit
  def edit
  end

  # POST /ayuda_localidads
  # POST /ayuda_localidads.json
  def create
    @ayuda_localidad = AyudaLocalidad.new(ayuda_localidad_params)

    respond_to do |format|
      if @ayuda_localidad.save
        format.html { redirect_to @ayuda_localidad, notice: 'Ayuda localidad was successfully created.' }
        format.json { render :show, status: :created, location: @ayuda_localidad }
      else
        format.html { render :new }
        format.json { render json: @ayuda_localidad.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ayuda_localidads/1
  # PATCH/PUT /ayuda_localidads/1.json
  def update
    respond_to do |format|
      if @ayuda_localidad.update(ayuda_localidad_params)
        format.html { redirect_to @ayuda_localidad, notice: 'Ayuda localidad was successfully updated.' }
        format.json { render :show, status: :ok, location: @ayuda_localidad }
      else
        format.html { render :edit }
        format.json { render json: @ayuda_localidad.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ayuda_localidads/1
  # DELETE /ayuda_localidads/1.json
  def destroy
    @ayuda_localidad.destroy
    respond_to do |format|
      format.html { redirect_to ayuda_localidads_url, notice: 'Ayuda localidad was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ayuda_localidad
      @ayuda_localidad = AyudaLocalidad.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ayuda_localidad_params
      params.require(:ayuda_localidad).permit(:mensaje)
    end
end
