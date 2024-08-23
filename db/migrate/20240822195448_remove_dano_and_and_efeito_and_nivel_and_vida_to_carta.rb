class RemoveDanoAndAndEfeitoAndNivelAndVidaToCarta < ActiveRecord::Migration[7.0]
  class RemoveDanoAndEfeitoAndNivelAndVidaFromCarta < ActiveRecord::Migration[6.1]
    def change
      remove_column :carta, :dano, :integer
      remove_column :carta, :vida, :integer
      remove_column :carta, :nivel, :integer
      remove_column :carta, :efeito, :boolean
      add_column :carta, :bonus, :integer
    end
  end
  
end
