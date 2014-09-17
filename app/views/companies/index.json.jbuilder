json.array!(@companies) do |company|
  json.extract! company, :id, :name, :website, :email, :address_id
  json.url company_url(company, format: :json)
end
