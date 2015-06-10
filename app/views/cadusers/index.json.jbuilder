json.array!(@cadusers) do |caduser|
  json.extract! caduser, :id, :nome, :rg, :cpf, :placa, :box, :turno
  json.url caduser_url(caduser, format: :json)
end
