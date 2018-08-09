class VideoIntitucionalsController < ApplicationController
  before_action :set_video_intitucional, only: [:show, :edit, :update, :destroy]

  # GET /video_intitucionals
  # GET /video_intitucionals.json
  def index
    @video_intitucionals = VideoIntitucional.all
  end

  # GET /video_intitucionals/1
  # GET /video_intitucionals/1.json
  def show
  end

  # GET /video_intitucionals/new
  def new
    @video_intitucional = VideoIntitucional.new
  end

  # GET /video_intitucionals/1/edit
  def edit
  end

  # POST /video_intitucionals
  # POST /video_intitucionals.json
  def create
    @video_intitucional = VideoIntitucional.new(video_intitucional_params)

    respond_to do |format|
      if @video_intitucional.save
        format.html { redirect_to @video_intitucional, notice: 'Video intitucional was successfully created.' }
        format.json { render :show, status: :created, location: @video_intitucional }
      else
        format.html { render :new }
        format.json { render json: @video_intitucional.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /video_intitucionals/1
  # PATCH/PUT /video_intitucionals/1.json
  def update
    respond_to do |format|
      if @video_intitucional.update(video_intitucional_params)
        format.html { redirect_to @video_intitucional, notice: 'Video intitucional was successfully updated.' }
        format.json { render :show, status: :ok, location: @video_intitucional }
      else
        format.html { render :edit }
        format.json { render json: @video_intitucional.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /video_intitucionals/1
  # DELETE /video_intitucionals/1.json
  def destroy
    @video_intitucional.destroy
    respond_to do |format|
      format.html { redirect_to video_intitucionals_url, notice: 'Video intitucional was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_video_intitucional
      @video_intitucional = VideoIntitucional.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def video_intitucional_params
      params.require(:video_intitucional).permit(:nombre, :descripcion, :link, :activo)
    end
end
