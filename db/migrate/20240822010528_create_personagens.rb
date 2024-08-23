class CreatePersonagens < ActiveRecord::Migration[7.0]
  def change
    create_table :personagens do |t|
      t.string :nome
      t.text :descricao
      t.text :especial

      t.timestamps
    end
  end
end
