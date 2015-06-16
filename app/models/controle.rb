class Controle < ActiveRecord::Base
	validates :placa, :presence => true
	validates :hora_entrada, :presence => true
end
