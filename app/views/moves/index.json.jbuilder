json.array!(@moves) do |move|
  json.extract! move, :id, :from, :to, :aula_id
  json.url move_url(move, format: :json)
end
