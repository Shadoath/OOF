json.array!(@plantings) do |planting|
  json.extract! planting, :id, :active_plant_id, :plant_status_id, :location_id, :soil_id, :count_planted, :date_planted
  json.url planting_url(planting, format: :json)
end
