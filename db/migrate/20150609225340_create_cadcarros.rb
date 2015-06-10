class CreateCadcarros < ActiveRecord::Migration
  def change
    create_table :cadcarros do |t|
      t.string :marca
      t.string :modelo
      t.string :cor
      t.string :placa
      t.string :ano

      t.timestamps
    end
  end
end
