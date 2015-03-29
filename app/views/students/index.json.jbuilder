json.array!(@students) do |student|
  json.extract! student, :id, :forename, :surname, :email, :city, :phonenumber
  json.url student_url(student, format: :json)
end
