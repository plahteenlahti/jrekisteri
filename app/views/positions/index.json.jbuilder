json.array!(@positions) do |position|
  json.extract! position, :id, :name, :board_id, :user_id
  json.url position_url(position, format: :json)
end
