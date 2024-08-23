class CreateRegras < ActiveRecord::Migration[7.0]
  def change
    create_table :regras do |t|
      t.text :descricao
      t.string :versao

      t.timestamps
    end
  end
end
