json.array!(@marks) do |mark|
  json.extract! mark, :id, :quadro, :valor, :cor, :aula_id
  json.url mark_url(mark, format: :json)
end
