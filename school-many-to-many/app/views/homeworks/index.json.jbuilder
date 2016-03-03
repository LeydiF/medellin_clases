json.array!(@homeworks) do |homework|
  json.extract! homework, :id, :name
  json.url homework_url(homework, format: :json)
end
