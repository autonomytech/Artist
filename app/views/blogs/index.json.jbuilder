json.array!(@blogs) do |blog|
  json.extract! blog, :id, :title, :content, :image, :like, :dislike
  json.url blog_url(blog, format: :json)
end
