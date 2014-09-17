json.array!(@individuals) do |individual|
  json.extract! individual, :id, :first_name, :last_name, :website, :email, :company_id
  json.url individual_url(individual, format: :json)
end
