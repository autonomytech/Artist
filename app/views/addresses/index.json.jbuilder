json.array!(@addresses) do |address|
  json.extract! address, :id, :street, :city, :state, :pincode, :country, :client_history_id
  json.url address_url(address, format: :json)
end
