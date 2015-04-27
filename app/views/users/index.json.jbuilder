json.array!(@users) do |user|
  json.extract! user, :id, :forename, :surname, :city, :status, :email
  json.url user_url(user, format: :json)
end
