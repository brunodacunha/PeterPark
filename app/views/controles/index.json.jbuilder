json.array!(@controles) do |controle|
  json.extract! controle, :id, :placa, :hora_entrada, :hora_saida, :total
  json.url controle_url(controle, format: :json)
end
