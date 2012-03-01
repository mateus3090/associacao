class CreateAtendentes < ActiveRecord::Migration
  def change
    create_table :atendentes do |t|
      t.string :codigo
      t.string :nome
      t.string :cpf
      t.string :rg
      t.string :endereco

      t.timestamps
    end
  end
end
