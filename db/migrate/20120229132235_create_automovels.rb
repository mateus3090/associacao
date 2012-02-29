class CreateAutomovels < ActiveRecord::Migration
  def change
    
    create_table :automovels do |t|
      t.string :codigo
      t.string :modelo
      t.string :marca
      t.string :tipo
      t.references :cliente

      t.timestamps
    end
    add_index :automovels, :cliente_id
  end
end
