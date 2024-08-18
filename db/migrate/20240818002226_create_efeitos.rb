class CreateEfeitos < ActiveRecord::Migration[7.0]
  def change
    create_table :efeitos do |t|
      t.string :nome
      t.string :tipo_de_efeito
      t.boolean :equipamento
      t.string :faz

      t.timestamps
    end
  end
end
