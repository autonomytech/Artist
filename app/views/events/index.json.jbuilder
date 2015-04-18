json.array!(@events) do |event|
  json.extract! event, :id, :artist, :s_date, :e_date, :s_time, :e_time, :is_publish
  json.title event.title
  json.description event.description
  json.start event.start_date.to_date
  json.end event.end_date.to_date.next
end