json.array!(@achievements) do |achievement|
  json.extract! achievement, :id, :name, :date, :details, :profile_id
  json.url achievement_url(achievement, format: :json)
end
