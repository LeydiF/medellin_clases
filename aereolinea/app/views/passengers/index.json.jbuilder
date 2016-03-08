json.array!(@passengers) do |passenger|
  json.extract! passenger, :id, :name, :document, :lastname
  json.url passenger_url(passenger, format: :json)
end
