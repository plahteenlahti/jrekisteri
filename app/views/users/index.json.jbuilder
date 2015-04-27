json.array!(@users) do |user|
  json.extract! user, :id, :forename, :surname, :email, :city
  json.url user_url(user, format: :json)
end
