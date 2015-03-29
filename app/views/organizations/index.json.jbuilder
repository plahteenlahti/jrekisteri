json.array!(@organizations) do |organization|
  json.extract! organization, :id, :name, :year, :introduction
  json.url organization_url(organization, format: :json)
end
