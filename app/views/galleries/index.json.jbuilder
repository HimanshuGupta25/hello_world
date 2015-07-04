json.array!(@gallery) do |gallery|
  json.extract! gallery, :id, :url ,:title , :content
  json.url gallery_path(gallery, format: :json)
end
