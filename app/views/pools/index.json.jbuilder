json.array!(@pools) do |pool|
  json.extract! pool, :id, :number, :description, :slug, :source, :source_trail
  json.url pool_url(pool, format: :json)
end
