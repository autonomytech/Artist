json.array!(@painting_categories) do |painting_category|
  json.extract! painting_category, :id, :name
  json.url painting_category_url(painting_category, format: :json)
end
