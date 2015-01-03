json.array!(@groups) do |group|
  json.extract! group, :id, :number, :description, :subelement_id, :slug
  json.url group_url(group, format: :json)
end
