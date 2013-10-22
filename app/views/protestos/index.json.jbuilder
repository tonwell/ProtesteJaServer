json.array!(@protestos) do |protesto|
  json.extract! protesto, :pessoa, :descricao
  json.url protesto_url(protesto, format: :json)
end
