json.array!(@steps) do |step|
  json.extract! step, :id, :amount, :date
  json.url step_url(step, format: :json)
end
