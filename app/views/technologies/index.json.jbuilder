json.array!(@technology) do |technology|
  json.extract! technology, :id, :title, :contents
  json.url technology_url(technology, format: :json)
end
