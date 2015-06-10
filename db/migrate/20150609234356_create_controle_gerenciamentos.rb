class CreateControleGerenciamentos < ActiveRecord::Migration
  def change
    create_table :controle_gerenciamentos do |t|
      t.float :valor_hora
      t.float :horaadd
      t.float :valor_diaria
      t.float :mensalista_meioturno
      t.float :mensalista_integral
      t.integer :num_vagas

      t.timestamps
    end
  end
end
