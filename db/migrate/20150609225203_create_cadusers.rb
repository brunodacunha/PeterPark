class CreateCadusers < ActiveRecord::Migration
  def change
    create_table :cadusers do |t|
      t.string :nome
      t.string :rg
      t.string :cpf
      t.string :placa
      t.string :box
      t.string :turno

      t.timestamps
    end
  end
end
