json.array!(@locations) do |location|
  json.extract! location, :id, :name, :sub_name, :soil_id, :size, :comment
  json.url location_url(location, format: :json)
end
