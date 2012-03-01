class CreateSeguros < ActiveRecord::Migration
  def change
    create_table :seguros do |t|
      t.string :codigo
      t.string :tipo
      t.string :descricao
      t.references :automovel

      t.timestamps
    end
    add_index :seguros, :automovel_id
  end
end
