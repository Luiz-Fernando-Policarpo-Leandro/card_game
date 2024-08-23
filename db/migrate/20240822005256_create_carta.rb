class CreateCarta < ActiveRecord::Migration[7.0]
  def change
    create_table :carta do |t|
      t.string :nome
      t.text :descricao
      t.integer :nivel
      t.integer :dano
      t.integer :vida
      t.references :tipo, null: false, foreign_key: true
      t.boolean :efeito

      t.timestamps
    end
  end
end
