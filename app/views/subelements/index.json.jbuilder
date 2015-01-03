json.array!(@subelements) do |subelement|
  json.extract! subelement, :id, :number, :description, :slug, :pool_id
  json.url subelement_url(subelement, format: :json)
end
