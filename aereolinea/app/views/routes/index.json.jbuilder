json.array!(@routes) do |route|
  json.extract! route, :id, :city_o_id, :city_d_id
  json.url route_url(route, format: :json)
end
