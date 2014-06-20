json.array!(@plants) do |plant|
  json.extract! plant, :id, :name, :plant_type, :group, :water_amount, :comment
  json.url plant_url(plant, format: :json)
end
