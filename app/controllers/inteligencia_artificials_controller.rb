class InteligenciaArtificialsController < ApplicationController
  before_action :set_inteligencia_artificial, only: %i[ show edit update destroy ]

  # GET /inteligencia_artificials or /inteligencia_artificials.json
  def index
    @inteligencia_artificials = InteligenciaArtificial.all
  end

  # GET /inteligencia_artificials/1 or /inteligencia_artificials/1.json
  def show
  end

  # GET /inteligencia_artificials/new
  def new
    @inteligencia_artificial = InteligenciaArtificial.new
  end

  # GET /inteligencia_artificials/1/edit
  def edit
  end

  # POST /inteligencia_artificials or /inteligencia_artificials.json
  def create
    @inteligencia_artificial = InteligenciaArtificial.new(inteligencia_artificial_params)

    respond_to do |format|
      if @inteligencia_artificial.save
        format.html { redirect_to inteligencia_artificial_url(@inteligencia_artificial), notice: "Inteligencia artificial was successfully created." }
        format.json { render :show, status: :created, location: @inteligencia_artificial }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @inteligencia_artificial.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /inteligencia_artificials/1 or /inteligencia_artificials/1.json
  def update
    respond_to do |format|
      if @inteligencia_artificial.update(inteligencia_artificial_params)
        format.html { redirect_to inteligencia_artificial_url(@inteligencia_artificial), notice: "Inteligencia artificial was successfully updated." }
        format.json { render :show, status: :ok, location: @inteligencia_artificial }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @inteligencia_artificial.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /inteligencia_artificials/1 or /inteligencia_artificials/1.json
  def destroy
    @inteligencia_artificial.destroy!

    respond_to do |format|
      format.html { redirect_to inteligencia_artificials_url, notice: "Inteligencia artificial was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inteligencia_artificial
      @inteligencia_artificial = InteligenciaArtificial.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def inteligencia_artificial_params
      params.require(:inteligencia_artificial).permit(:nome, :descricao, :url_image, :categoria, :tecnologia, :data_criacao, :desenvolvedor, :url_documentacao, :url_repositorio, :avaliacao_media, :contagem_avaliacoes)
    end
end
