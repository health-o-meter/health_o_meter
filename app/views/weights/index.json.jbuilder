json.array!(@weights) do |weight|
  json.extract! weight, :id, :amount, :date
  json.url weight_url(weight, format: :json)
end
