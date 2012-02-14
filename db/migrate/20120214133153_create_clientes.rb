class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :nome
      t.string :telefone
      t.string :cpf
      t.string :rg
      t.string :endereco
      t.string :seguro

      t.timestamps
    end
  end
end
