class CreateControles < ActiveRecord::Migration
  def change
    create_table :controles do |t|
      t.string :placa
      t.string :hora_entrada
      t.string :hora_saida
      t.float :total

      t.timestamps
    end
  end
end
