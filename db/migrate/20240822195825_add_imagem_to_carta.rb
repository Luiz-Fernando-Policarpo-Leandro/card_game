class AddImagemToCarta < ActiveRecord::Migration[7.0]
  def change
    add_column :carta, :imagem, :string
  end
end
