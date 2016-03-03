json.array!(@steps) do |step|
  json.extract! step, :id, :taken_steps, :date
  json.url step_url(step, format: :json)
end
