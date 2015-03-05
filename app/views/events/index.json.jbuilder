json.array!(@events) do |event|
  json.extract! event, :id
  json.title event.title
  json.description event.description
  json.start event.start_date.to_date
  json.end event.end_date.to_date.next
  json.url event_url(event, format: :html)
end