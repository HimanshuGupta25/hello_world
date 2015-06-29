json.array!(@entries) do |entry|
  json.extract! entry, :id, :title, :link
  json.url entry_url(entry, format: :json)
end
