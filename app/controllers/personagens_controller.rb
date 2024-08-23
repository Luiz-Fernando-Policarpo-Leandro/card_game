class PersonagensController < ApplicationController
  before_action :set_personagen, only: %i[ show update destroy ]

  # GET /personagens
  def index
    @personagens = Personagen.all

    render json: @personagens
  end

  # GET /personagens/1
  def show
    render json: @personagen
  end

  # POST /personagens
  def create
    @personagen = Personagen.new(personagen_params)

    if @personagen.save
      render json: @personagen, status: :created, location: @personagen
    else
      render json: @personagen.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /personagens/1
  def update
    if @personagen.update(personagen_params)
      render json: @personagen
    else
      render json: @personagen.errors, status: :unprocessable_entity
    end
  end

  # DELETE /personagens/1
  def destroy
    @personagen.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_personagen
      @personagen = Personagen.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def personagen_params
      params.require(:personagen).permit(:nome, :descricao, :especial)
    end
end
