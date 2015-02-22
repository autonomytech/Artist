json.array!(@paintings) do |painting|
  json.extract! painting, :id, :title, :profile_id, :ref_no, :size, :style, :details, :medium, :status, :image
  json.url painting_url(painting, format: :json)
end
