class Cartum < ApplicationRecord
  belongs_to :tipo
  has_one_attached :imagem

  def imagem_variants(tipo)
    tamanho = case tipo
              when 'p' then 50
              when 'm' then 100
              when 'g' then 500
              else 0
              end
    
    if tamanho > 0
      imagem.variant(resize_to_limit: [tamanho, tamanho]).processed
    else
      imagem
    end
  end
end

