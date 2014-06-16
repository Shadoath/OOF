json.array!(@plant_statuses) do |plant_status|
  json.extract! plant_status, :id, :name
  json.url plant_status_url(plant_status, format: :json)
end
