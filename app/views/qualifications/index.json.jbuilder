json.array!(@qualifications) do |qualification|
  json.extract! qualification, :id, :qualification, :college_name, :university, :year, :profile_id
  json.url qualification_url(qualification, format: :json)
end
