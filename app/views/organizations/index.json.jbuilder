json.array!(@organizations) do |organization|
  json.extract! organization, :id, :name, :founded, :description
  json.url organization_url(organization, format: :json)
end
