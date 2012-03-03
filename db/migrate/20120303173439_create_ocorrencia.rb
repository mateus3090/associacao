class CreateOcorrencia < ActiveRecord::Migration
  def change
    create_table :ocorrencia do |t|
      t.string :codigo
      t.string :data
      t.string :descricao
      t.string :hora
      t.references :cliente
      t.references :seguro
      t.references :automovel

      t.timestamps
    end
    add_index :ocorrencia, :cliente_id
    add_index :ocorrencia, :seguro_id
    add_index :ocorrencia, :automovel_id
  end
end
