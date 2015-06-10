json.array!(@cadcarros) do |cadcarro|
  json.extract! cadcarro, :id, :marca, :modelo, :cor, :placa, :ano
  json.url cadcarro_url(cadcarro, format: :json)
end
