json.array!(@aulas) do |aula|
  json.extract! aula, :id, :nome, :conteudo, :fen, :usuario_id
  json.url aula_url(aula, format: :json)
end
