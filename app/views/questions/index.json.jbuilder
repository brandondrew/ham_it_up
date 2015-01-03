json.array!(@questions) do |question|
  json.extract! question, :id, :number, :text, :answer, :options, :pool_id, :group_id
  json.url question_url(question, format: :json)
end
