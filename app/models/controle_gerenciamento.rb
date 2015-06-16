class ControleGerenciamento < ActiveRecord::Base

	validates :valor_hora,  :presence => true
	validates :horaadd,  :presence => true
	validates :valor_diaria,  :presence => true
	validates :mensalista_meioturno,  :presence => true
	validates :mensalista_integral,  :presence => true
	validates :num_vagas,  :presence => true
end
