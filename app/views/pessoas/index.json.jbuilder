json.array!(@pessoas) do |pessoa|
  json.extract! pessoa, :nome, :tel
  json.url pessoa_url(pessoa, format: :json)
end
