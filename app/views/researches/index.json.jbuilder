json.array!(@researches) do |research|
  json.extract! research, :id, :name, :contents, :main_contents
  json.url research_url(research, format: :json)
end
