json.array!(@controle_gerenciamentos) do |controle_gerenciamento|
  json.extract! controle_gerenciamento, :id, :valor_hora, :horaadd, :valor_diaria, :mensalista_meioturno, :mensalista_integral, :num_vagas
  json.url controle_gerenciamento_url(controle_gerenciamento, format: :json)
end
