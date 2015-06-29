json.array!(@gallery) do |gallery|
  json.extract! gallery, :id, :url
  json.url gallery_path(gallery, format: :json)
end
