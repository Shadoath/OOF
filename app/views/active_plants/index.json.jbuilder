json.array!(@active_plants) do |active_plant|
  json.extract! active_plant, :id, :plant_id, :status_id, :location_id, :soil_id, :count_active, :count_harvested, :comment
  json.url active_plant_url(active_plant, format: :json)
end
