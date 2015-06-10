json.array!(@gerenciamentos) do |gerenciamento|
  json.extract! gerenciamento, :id, :valor_hora, :horaadd, :valor_diaria, :mensalista_meio_turno, :mensalista_integral, :num_vagas
  json.url gerenciamento_url(gerenciamento, format: :json)
end
