json.array!(@blogs) do |blog|
  json.extract! blog, :id, :image , :title, :short_contents, :main_contents
  json.url blog_url(blog, format: :json)
end
