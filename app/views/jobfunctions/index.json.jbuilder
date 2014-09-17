json.array!(@jobfunctions) do |jobfunction|
  json.extract! jobfunction, :id, :name
  json.url jobfunction_url(jobfunction, format: :json)
end
