json.array!(@aulas) do |aula|
  json.extract! aula, :id, :nome, :conteudo, :fen, :moves, :usuario_id
  json.url aula_url(aula, format: :json)
end
