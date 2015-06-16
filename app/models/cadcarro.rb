class Cadcarro < ActiveRecord::Base
	validates :marca, :presence => true
	validates :modelo, :presence => true
	validates :placa, :presence => true 
end
