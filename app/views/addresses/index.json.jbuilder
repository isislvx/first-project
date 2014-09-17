json.array!(@addresses) do |address|
  json.extract! address, :id, :line1, :line2, :city, :state, :state, :zip
  json.url address_url(address, format: :json)
end
