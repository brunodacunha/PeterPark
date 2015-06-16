class Caduser < ActiveRecord::Base
		validates :nome, :presence => true
		validates :placa, :presence => true
		validates :turno, :presence => true
	
end
