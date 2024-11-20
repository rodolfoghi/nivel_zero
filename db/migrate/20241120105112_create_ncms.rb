class CreateNcms < ActiveRecord::Migration[8.0]
  def change
    create_table :ncms do |t|
      t.string :codigo
      t.string :descricao
      t.string :excecao
      t.boolean :ativa
      t.string :cest

      t.timestamps
    end
  end
end
