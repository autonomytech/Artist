json.array!(@comments) do |comment|
  json.extract! comment, :id, :name, :email, :comment, :like, :dislike
  json.url comment_url(comment, format: :json)
end
