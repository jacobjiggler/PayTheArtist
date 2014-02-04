json.array!(@splits) do |split|
  json.extract! split, :total
  json.url split_url(split, format: :json)
end
