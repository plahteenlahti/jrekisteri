json.array!(@boards) do |board|
  json.extract! board, :id, :organization_id
  json.url board_url(board, format: :json)
end
