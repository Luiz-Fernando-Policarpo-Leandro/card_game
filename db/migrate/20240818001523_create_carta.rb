class CreateCarta < ActiveRecord::Migration[7.0]
  def change
    create_table :carta do |t|
      t.string :nome
      t.text :descricao
      t.integer :vida
      t.integer :dano
      t.references :efeito, null: false, foreign_key: true
      t.references :tipo, null: false, foreign_key: true

      t.timestamps
    end
  end
end
