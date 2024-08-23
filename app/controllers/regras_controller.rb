class RegrasController < ApplicationController
  before_action :set_regra, only: %i[ show update destroy ]

  # GET /regras
  def index
    @regras = Regra.all

    render json: @regras
  end

  # GET /regras/1
  def show
    render json: @regra
  end

  # POST /regras
  def create
    @regra = Regra.new(regra_params)

    if @regra.save
      render json: @regra, status: :created, location: @regra
    else
      render json: @regra.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /regras/1
  def update
    if @regra.update(regra_params)
      render json: @regra
    else
      render json: @regra.errors, status: :unprocessable_entity
    end
  end

  # DELETE /regras/1
  def destroy
    @regra.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_regra
      @regra = Regra.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def regra_params
      params.require(:regra).permit(:descricao, :versao)
    end
end
