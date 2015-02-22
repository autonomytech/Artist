json.array!(@client_histories) do |client_history|
  json.extract! client_history, :id, :name, :email, :mobile_no, :payment_status, :painting_id
  json.url client_history_url(client_history, format: :json)
end
