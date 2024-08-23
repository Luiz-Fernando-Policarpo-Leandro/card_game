class CartaController < ApplicationController
  before_action :set_cartum, only: %i[show update destroy]

  # GET /carta
  def index
    tamanho = params[:tamanho] || 'n'
    @cartas = Cartum.all.map do |carta|
      {
        nome: carta.nome,
        descricao: carta.descricao,
        imagem_url: url_for(carta.imagem_variants(tamanho))
      }
    end
    render json: @cartas
  end

  # GET /carta/1
  def show
    render json: @cartum
  end

  # POST /carta
  def create
    @cartum = Cartum.new(cartum_params)

    if @cartum.save
      render json: @cartum, status: :created, location: @cartum
    else
      render json: @cartum.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /carta/1
  def update
    if @cartum.update(cartum_params)
      render json: @cartum
    else
      render json: @cartum.errors, status: :unprocessable_entity
    end
  end

  # DELETE /carta/1
  def destroy
    @cartum.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_cartum
    @cartum = Cartum.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def cartum_params
    params.require(:cartum).permit(:nome, :descricao, :tipo_id, :imagem)
  end
end
