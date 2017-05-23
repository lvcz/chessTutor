json.array!(@highlights) do |highlight|
  json.extract! highlight, :id, :peca, :valor, :cor
  json.url highlight_url(highlight, format: :json)
end
