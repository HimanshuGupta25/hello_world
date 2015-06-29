json.array!(@members) do |member|
  json.extract! member, :id, :image, :name, :description
  json.url member_path(member, format: :json)
end
