class TestimoniosController < ApplicationController
  before_action :set_testimonio, only: [:show, :edit, :update, :destroy]

  # GET /testimonios
  # GET /testimonios.json
  def index
    @testimonios = Testimonio.all
  end

  # GET /testimonios/1
  # GET /testimonios/1.json
  def show
  end

  # GET /testimonios/new
  def new
    @testimonio = Testimonio.new
  end

  # GET /testimonios/1/edit
  def edit
  end

  # POST /testimonios
  # POST /testimonios.json
  def create
    @testimonio = Testimonio.new(testimonio_params)

    respond_to do |format|
      if @testimonio.save
        format.html { redirect_to @testimonio, notice: 'Testimonio was successfully created.' }
        format.json { render :show, status: :created, location: @testimonio }
      else
        format.html { render :new }
        format.json { render json: @testimonio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /testimonios/1
  # PATCH/PUT /testimonios/1.json
  def update
    respond_to do |format|
      if @testimonio.update(testimonio_params)
        format.html { redirect_to @testimonio, notice: 'Testimonio was successfully updated.' }
        format.json { render :show, status: :ok, location: @testimonio }
      else
        format.html { render :edit }
        format.json { render json: @testimonio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /testimonios/1
  # DELETE /testimonios/1.json
  def destroy
    @testimonio.destroy
    respond_to do |format|
      format.html { redirect_to testimonios_url, notice: 'Testimonio was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_testimonio
      @testimonio = Testimonio.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def testimonio_params
      params.require(:testimonio).permit(:nombre, :descripcion, :link, :activo)
    end
end
